# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "jonathan"
client_key               "#{current_dir}/jonathan.pem"
chef_server_url          "https://jl72882.mylabserver.com/organizations/loboacademy"
cookbook_path            ["#{current_dir}/../cookbooks"]
