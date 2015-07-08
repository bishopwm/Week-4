class Contact < ActiveRecord::Base

	validates :name, presence: true
	validates :email, presence: true
	validates :phone_number, presence: true
	validate :proper_email



	def self.last_created(n)
		order('name ASC')
	end

	def self.search_by_letter(letter)
		where("name LIKE '#{letter}%'")
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

	def show_status
	# 	if [status].any?
	# 	[status].compact.join(" - ")
	# else
	# 	nil
	[status].compact.join(" - ")
	
	end

	def proper_email
		unless email.include? '@'
      	errors.add(:proper_email, 'Invalid email')
    	end
	end


end
