#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Brian Dear, All Rights Reserved.

package 'postgreql-server' do
  notifies :run, 'execute[postgresql-init]'
end

execute 'postgresql-init' do
  command 'postgresql-setup initdb'
  action :nothing
end

service 'postgresql' do
  action [:enable, :start]
end
