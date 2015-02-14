#
# Cookbook Name:: base
# Recipe:: users
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

group "devs" do
  gid 1100 
end

usr = data_bag_item('users', 'teimatinim')
user usr['id'] do
  supports :manage_home => true
  comment  usr['comment']
  uid      usr['uid']
  gid      usr['gid']
  home     usr['home']
  shell    usr['shell']
  password usr['sha-512']
end

group "sudo" do
  action :modify
  append true
  members [ usr['id'] ]
end

