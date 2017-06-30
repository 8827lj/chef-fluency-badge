#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# for the pkg resource type, in the absence of an action, the default is to install

# using node attirbute platform_family to determine which apache pkg to install on a node based on OS family - debian or rhel 

if node('platform_family') == "rhel"
	pacakge = "httpd"
elsif node('platform_family') == "debian"
	pacakge = "apache2"
end


# the variable "package" below is the referenced in the above if-then-else statement. value will be dynamically
# applied on next convergence, based on platform_family attribute  of the node. 

#apache2 is the resource name

package 'apache2' do 
	package_name package
	action :install
end



# two actions for service resource:
# start the service and ensure it's enabled at bootime - persistent

service 'apache2' do 
	service_name 'httpd'
	action [:start, :enable]
end

