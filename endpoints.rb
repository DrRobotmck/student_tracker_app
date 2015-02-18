
module StudentTracker

	class App < Sinatra::Application

		Sinatra::JSON

		get '/' do
			"Hi there! How did you find this page? You must be lost!"
		end

		get '/breakdown' do
			results = Student.all.as_json(include: :assignments)
			json results
		end
	end
end