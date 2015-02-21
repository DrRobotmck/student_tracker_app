
module StudentTracker

	class App < Sinatra::Application

		Sinatra::JSON
		enable :sessions

		get '/' do
			erb :index
		end

		post '/login' do
			instructor = Student.find_by(github_handle: params[:github_handle], is_instructor: true)
			if instructor
				session[:instructor] = { instructor: true, github_handle: params[:github_handle] }
				redirect '/breakdown'
			else
				redirect '/'
			end

		end

		get '/merge' do
			MergeAndLog.merge_and_log
			redirect '/breakdown'
		end

		get '/breakdown' do
			if session[:instructor]
				results = Student.all.as_json(include: :assignments)
				json results
			else
				redirect '/'
			end
		end

		get '/breakdown/:github_handle' do
			if session[:instructor]
				results = Student.find_by(github_handle: params[:github_handle]).as_json(include: :assignments)
				json results
			else
				redirect '/'
			end
		end
	end
end