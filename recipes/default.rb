#
# Cookbook Name:: ruby
# Recipe:: default
#
# Copyright 2014, bageljp
#
# All rights reserved - Do Not Redistribute
#

rbenv_ruby "#{node['ruby']['version']}" do
  global node['ruby']['global']
  if !node['ruby']['patch'].nil?
    patch "#{node['ruby']['patch']}"
  end
end

node['ruby']['gems'].each do |gem|
  rbenv_gem gem do
    ruby_version node['ruby']['version']
  end
end

