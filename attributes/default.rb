default[:chef_rails_host][:ruby_version] = '2.1.5'
default[:postgresql][:password][:postgres] = "supersecret"
default[:nginx][:version] = "1.6.3"
default[:nginx][:init_style] = "init"
default[:nginx][:modules] = "http_stub_status_module", "passenger"
default[:nginx][:passenger][:version] = "5.0.8"
default[:nginx][:passenger][:gem_binary] = "/usr/local/rvm/gems/ruby-2.1.5/gems/passenger-5.0.8"
default[:nginx][:configure_flags] = ["--add-module=/usr/local/rvm/gems/ruby-2.1.5/gems/passenger-5.0.8/ext/nginx"]