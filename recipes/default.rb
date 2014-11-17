#
# Cookbook Name:: zip_lwrp
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# apt-get
package "zip"
if platform_family?("rhel", "centos")
  package "unzip"
end