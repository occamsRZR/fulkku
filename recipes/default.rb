#
# Cookbook Name:: fulkka
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

##
# Give sudo permissions to the user
include_recipe 'apt::default'


package 'htop'
package 'emacs24'

include_recipe 'oh_my_zsh'

# create user, set shell and folder
user node['fulkku']['user'] do
  password node['fulkku']['password']
  shell '/bin/zsh'
  home "/home/#{node['fulkku']['user']}"
end

# make the fulkku user's directory available to the gita group
directory "/home/#{node['fulkku']['user']}" do
  owner node['fulkku']['user']
  mode 0774
end
