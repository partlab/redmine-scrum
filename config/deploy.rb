require "dotenv"
require "dotenv/deployment/version"

Dotenv.load('.env')

# config valid only for Capistrano 3.1
lock '3.2.1'

set :user, ENV['USER_DEPLOY']
set :pty, true

set :application, 'redmine'
set :deploy_to, ENV['DEPLOY_TO']
set :server, ENV['SERVER']
set :repo_url, "https://github.com/partlab/redmine-scrum.git"

set :rvm_type, :user
set :rvm_ruby_version, "ruby-2.1.1@#{fetch(:application)}"

set :linked_files, %w{.env}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}

set(:config_files, %w(
  nginx.conf
  unicorn.rb
  unicorn_init.sh
))

set(:symlinks, [
  {
    source: 'nginx.conf',
    link: "/etc/nginx/sites-enabled/{{application}}"
  },
  {
    source: 'unicorn_init.sh',
    link: "/etc/init.d/unicorn_{{application}}"
  }
])

set(:executable_config_files, %w(
  unicorn_init.sh
))

namespace :deploy do
  after :publishing, :restart
  after :finishing, 'deploy:cleanup'
end
