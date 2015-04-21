#
# Cookbook Name:: shelf
# Recipe:: node
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Installs Unity Desktop Environment

node.set['apt']['key_proxy'] = 'http://switchlvproxy.foxinc.com:8080'
include_recipe "nodejs"

nodejs_npm 'grunt' do
  version '0.4.5'
end

nodejs_npm 'jshint' do
  version '2.7.0'
end

nodejs_npm 'cordova' do
  version '4.3.0'
end
