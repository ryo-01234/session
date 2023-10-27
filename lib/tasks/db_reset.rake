namespace :db_reset do
  desc "Database reset everyday at midnaight"
  task db_reset: :environment do
    db:reset
  end
end
