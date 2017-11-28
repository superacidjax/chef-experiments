#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, Brian Dear, All Rights Reserved.
#

package 'httpd' do
  package_name 'httpd'
  action :install
end

service 'apache2' do
  service_name 'httpd'
  action [:start, :enable]
end
