class ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require()

    ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql',
    :database => 'vader'
    )
  # include/set all ERB fils in /views
    set :views, File.expand_path('../../views', __FILE__)

  # 404 errors
  not_found do
    erb :not_found
  end

end
