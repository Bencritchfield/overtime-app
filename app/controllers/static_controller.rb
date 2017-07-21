class StaticController < ApplicationController
	def homepage
		if admin_type.include?(current_user.type) 
			@pending_approvals = Post.submitted
			@recent_audit_items = AuditLog.last(10)
		else
			# fix scope
			@pending_audit_confirmations = current_user.audit_logs.pending
		end
	end
end 