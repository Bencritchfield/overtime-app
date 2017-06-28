@user = User.create(email: "test@test.com", password: "asdfadf", password_confirmation: "asdfadf", first_name: "John", last_name: "Snow")

puts "1 User created"

100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post}rationale content", user_id: @user.id)
end

puts "100 post have been created"