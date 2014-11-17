#
# Cookbook Name:: zip_lwrp
# Recipe:: test
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

zip_lwrp_zip "test" do
  files ['/opt/VBoxGuestAdditions-4.3.10/uninstall.sh','/opt/VBoxGuestAdditions-4.3.10/LICENSE']
  zipfile "/home/vagrant/output.zip"
  action :zip
end


zip_lwrp_unzip "test" do
  exdir "/home/vagrant/"
  zipfile "/home/vagrant/output.zip"
  action :unzip
end