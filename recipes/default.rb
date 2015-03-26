#
# Cookbook Name:: sendmail
# Recipe:: default
#
# Copyright 2015, Liftopia, Inc.
#
# All rights reserved - Do Not Redistribute
#

service 'postfix' do
  action [ :disable, :stop ]
  only_if { File.exist?('/etc/init.d/postfix') }
end

package 'postfix' do
  action :purge
end

directory '/etc/postfix' do
  recursive true
  action :delete
end

package 'sendmail'

service 'sendmail' do
  supports :reload => true, :restart => true
  action [ :enable, :start ]
end

execute 'make sendmail config' do
  command 'make'
  cwd '/etc/mail'
  notifies :restart, 'service[sendmail]', :delayed
  action :nothing
end

template '/etc/mail/access' do
  source 'access.erb'
  mode '0600'
  notifies :run, 'execute[make sendmail config]', :delayed
end

template '/etc/mail/sendmail.mc' do
  source 'sendmail.mc.erb'
  mode '0644'
  notifies :run, 'execute[make sendmail config]', :delayed
end
