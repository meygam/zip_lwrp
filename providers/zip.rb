def load_current_resource
  @current_resource = Chef::Resource::ZipLwrpZip.new(@new_resource.name)
  @current_resource.name(@new_resource.name)
  @current_resource.zipfile(@new_resource.zipfile)
  @current_resource.files(@new_resource.files)
end


action :zip do
  zip_file(@current_resource.files, @current_resource.zipfile)
end

def zip_file(files, zipfile)
  bash "zip_files" do
    user "root"
    code <<-EOH
    zip #{zipfile} #{files.join(' ')}
    EOH
  end
end