#coding:utf-8
namespace :db do
  desc "drop all tables"
  task :drop_all_tables => :environment do
    ActiveRecord::Base.connection.tables.each { |t_name|
      ActiveRecord::Migration.drop_table t_name
    }
    p "...SUCCESS!!!"
  end
end