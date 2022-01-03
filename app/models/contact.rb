class Contact < MailForm::Base
	#include ActiveModel::Model
	attribute :name,      :validate => true
	attribute :business
	attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :phone_number
	attribute :website
	attribute :services
	attribute :budget
	attribute :message
	attribute :nickname,  :captcha  => true

	# Declare the e-mail headers. It accepts anything the mail method
	# in ActionMailer accepts.
	def headers
		{
			:subject => "Contact Vanessa Amilet - New Inquiry",
			:to => "vanessa.amilet@gmail.com",
			:from => %("#{name}" <#{email}>)
		}
	end
end