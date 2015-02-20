
module StudentTracker

	class App < Sinatra::Application

		Sinatra::JSON

		get '/' do
			"Hi there! How did you find this page? You must be lost!"
		end

		get '/merge' do
			MergeAndLog.merge_and_log
			redirect '/breakdown'
		end

		get '/breakdown' do
			results = Student.all.as_json(include: :assignments)
			json results
		end
	end
end