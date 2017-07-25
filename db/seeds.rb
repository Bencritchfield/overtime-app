@employee = Employee.create(email: "test45@test.com", 
										password: "asdfadf", 
										password_confirmation: "asdfadf", 
										first_name: "John", 
										last_name: "Snow",
										phone: "8017352102")

puts "1 employee created"

AdminUser.create(email: "admin@test.com", 
								 password: "asdfadf", 
								 password_confirmation: "asdfadf", 
								 first_name: "Admin", 
								 last_name: "Name",
								 phone: "8017352102")

puts "1 Admin user created"


	AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
	AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
	AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"

100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lor", user_id: @employee.id, overtime_request: 2.5)
end

puts "100 Post have been created"
