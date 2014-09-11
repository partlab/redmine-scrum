set :branch, :master
set :full_app_name, "#{fetch(:application)}_production"
set :enable_ssl, false
set :unicorn_worker_count, 5
set :rails_env, :production
set :deploy_to, "#{fetch(:deploy_to)}"
set :unicorn_pid, "#{fetch(:deploy_to)}#{fetch(:application)}/shared/tmp/pids/unicorn.pid"
server fetch(:server), user: fetch(:user), roles: %w{web app db}
