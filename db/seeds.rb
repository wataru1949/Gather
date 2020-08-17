table_names = %w(
  users categories posts groups group_users chats
)

table_names.each do |table_name|
  path = Rails.root.join("db", "seeds", "#{table_name}.rb")
  if File.exist?(path)
    puts "Creating #{table_name}...."
    require(path)
  end
end