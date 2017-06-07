#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


# defining a new package resource type.
# in the absence of action, package will be installed. 


package 'apache2' do 
	package_name 'httpd'
	action :install
end



# two actions for service resource:
# start the service and ensure it's enabled at bootime - persistent

service 'apache2' do 
	service_name 'httpd'
	action [:start, :enable]
end
