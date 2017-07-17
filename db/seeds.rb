@user = User.create(email: "test45@test.com", 
										password: "asdfadf", 
										password_confirmation: "asdfadf", 
										first_name: "John", 
										last_name: "Snow",
										phone: "8017352102")

puts "1 User created"

AdminUser.create(email: "admin@test.com", 
								 password: "asdfadf", 
								 password_confirmation: "asdfadf", 
								 first_name: "Admin", 
								 last_name: "Name",
								 phone: "8017352102")

puts "1 Admin User created"

100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 post have been created"