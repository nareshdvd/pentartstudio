namespace :deploy do
  desc "Symlink production.rb file"
  task  :symlink_production_conf do
    on roles(:app) do
      execute "ln -nfs #{shared_path}/config/environments/production.rb #{current_path}/config/environments/production.rb"
    end
  end
  after :deploy, "deploy:symlink_production_conf"
end