template node.mysql_bckp.script_path do
source "mysql_bckp.erb"
	mode 0755
  action :create
end
