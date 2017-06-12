#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# for the pkg resource type, in the absence of an action, the default is install


# using node attribute information to decide which pkg to install 
# if this node's platform_family attribute = rhel, install the httpd pkg
# elseif the node's platform_family pkg = debian, install the apache2 pkg.


if node('platform_family') == "rhel"
	pacakge = "httpd"
elsif node('platform_family') == "debian"
	pacakge = "apache2"
end


# the variable "package" below is the one referenced in the above if-then-else statement. value will be dynamically
# applied on next convergence, based on platform_family of the node. 

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

