class Contact < ActiveRecord::Base

		validates :name, presence: true
		validates :email, presence: true
		validates :phone_number, presence: true

	def self.last_created(n)
		order('name ASC')
	end

	def show_name
		[name].compact.join(" - ")
	end

	def show_address
		[name, address].compact.join(" - ")
	end

	def show_email
		[email].compact.join(" - ")
	end

	def show_phone_number
		[phone_number].compact.join(" - ")
	end


end
