class ApiKey < ActiveRecord::Base
  belongs_to :student

  def self.generate_for(student)
    range = [*'0'..'9',*'A'..'Z',*'a'..'z']
    key = Array.new(50) { range.sample }.join

    create( key: key, student: student )
  end

  def self.authenticate_instructor(key)
    apiKey = find_by(key: key)
    apiKey && apiKey.student.is_instructor
  end
end
