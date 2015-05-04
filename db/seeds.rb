def find_or_create_user(user_attrs)
  email = user_attrs[:email]
  user = User.find_by_email(email)

  if user.nil?
    user = User.create(user_attrs)
    puts "Created user having email #{email}"
  else
    puts "User having email #{email} already exists, thus not created"
  end
  user
end

application_admin = find_or_create_user({email: 'admin@example.com', password: Settings.default_password })