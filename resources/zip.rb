actions :zip
default_action :zip

attribute :files, :kind_of => Array,:required => true
attribute :zipfile, :name_attribute => true, :kind_of => String