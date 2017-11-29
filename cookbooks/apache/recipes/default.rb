#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, Brian Dear, All Rights Reserved.
#

case node['platform_family']
when 'rhel'
  package = 'httpd'
when 'debian'
  package = 'apache2'
end

package 'httpd' do
  package_name package
  action :install
end

service 'apache2' do
  service_name 'httpd'
  action [:start, :enable]
end

