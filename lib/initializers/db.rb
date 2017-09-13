DB = Sequel.sqlite

DB.create_table?(:books) do
  primary_key :id
  String :title
  String :author
end
