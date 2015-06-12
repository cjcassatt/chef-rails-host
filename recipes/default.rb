#
# Cookbook Name:: chef-rails-host
# Recipe:: default
#
# Copyright (C) 2015 STSI Inc.
#
# All rights reserved - Do Not Redistribute
#

# set up rubies ...
include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby node[:chef_rails_host][:ruby_version]
  global true
end

rbenv_gem "bundler" do
  ruby_version node[:chef_rails_host][:ruby_version]
end

rbenv_gem "passenger" do
  ruby_version node[:chef_rails_host][:ruby_version]
end

include_recipe "nodejs"
include_recipe "apt"
include_recipe "build-essential"
include_recipe "nginx::commons"
include_recipe "nginx::source"
include_recipe "nginx::passenger"
include_recipe "postgresql::server"
include_recipe "postgresql::client"

