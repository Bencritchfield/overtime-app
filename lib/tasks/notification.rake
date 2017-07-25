namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do

  	# User.all.each do |user|
  	# 	SmsTool.send_sms()
  	# end
  	# number: "5555555555"
  end


  desc "Sends mail notification to managers (admin users) each day to inform of pending evertime requests"
  task manger_email: :environment do
  	submitted_posts = Post.submitted_posts
  	admin_users = AdminUser.all

  	if submitted_posts.count > 0
  		admin_users.each do |admin|
  			ManagerMailer.email(admin).deliver_later
  		end
  	end
  end
end
