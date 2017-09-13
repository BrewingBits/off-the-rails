DB = Sequel.connect("postgres://#{ENV['PGHOST']}/#{ENV['PGDATABASE']}?user=#{ENV['PGUSER']}&password=#{ENV['PGPASS']}")

DB.create_table?(:books) do
  primary_key :id
  String :title
  String :author
end
