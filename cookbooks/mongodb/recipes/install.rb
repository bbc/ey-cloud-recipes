mongodb_version = node[:mongo_version]

ey_cloud_report "MongoDB" do
  message "installing mongodb #{mongodb_version}"
end

enable_package "dev-libs/boost" do
  version "1.52.0-r4"
end

enable_package "app-arch/snappy" do
  version "1.0.4"
end

enable_package "dev-db/mongodb" do
  version mongodb_version
end

package "dev-db/mongodb" do
  version mongodb_version
  action :install
end
