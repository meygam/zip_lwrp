def load_current_resource
  @current_resource = Chef::Resource::ZipLwrpUnzip.new(@new_resource.name)
  @current_resource.name(@new_resource.name)
  @current_resource.zipfile(@new_resource.zipfile)
  @current_resource.exdir(@new_resource.exdir)
end


action :unzip do
  unzip_file(@current_resource.exdir, @current_resource.zipfile)
end

def unzip_file(exdir, zipfile)
  bash "unzip_files" do
    user "root"
    code <<-EOH
    unzip #{zipfile} -d #{exdir}
    EOH
  end
end