class Student < ActiveRecord::Base
	has_many :assignments
	has_one :api_key

	scope :instructors, -> { where(is_instructor: true) }
end
