directory "#{node["mysql_bckp"]["dump_path"]}" do
	mode 0777
end 

template node.mysql_bckp.script_path do
source "mysql_bckp.erb"
	mode 0755
  action :create
end

execute "find #{node["mysql_bckp"]["dump_path"]}/*.sql.gz -mtime +#{node["mysql_bckp"]['days_retain']} -exec rm -f {} \\;"
