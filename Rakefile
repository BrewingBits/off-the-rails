desc 'Loads our .env into ENV'
task :environment do
  puts 'Loading environment...'
  require 'dotenv/load'
end

namespace :db do
  def check_command_exists(cmd)
    # We check for the existence of a command and suppress its
    #   output by routing it into /dev/null
    unless system("which #{cmd}", out: File::NULL)
      fail "#{cmd} not found. Please install the postgres utilities first."
    end
  end

  desc 'Creates a new database based on the variables in .env'
  task :create => :environment do
    check_command_exists 'createdb'
    puts 'Creating database...'
    # Here we make sure to give feedback if the creation was successfull
    puts `createdb && echo 'Created db #{ENV['PGDATABASE']}'`
  end

  desc 'Drops the database specified in the variables in .env'
  task :drop => :environment do
    check_command_exists 'dropdb'
    puts 'Dropping database...'
    # Here we make sure to give feedback if the dropping was successfull
    puts `dropdb #{ENV['PGDATABASE']} && echo 'Dropped db #{ENV['PGDATABASE']}'`
  end

  # Here we just invoke both tasks, one after the other
  desc 'Resets our database by dropping and creating it again.'
  task :reset => :environment do
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
  end
end
