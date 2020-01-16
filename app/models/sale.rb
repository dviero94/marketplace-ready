class Sale < ApplicationRecord

	before_create :generate_guid
	belong_to :content

	private

		def generate_guid
			self.guid = SecureRandom.uuid()
		end

end
