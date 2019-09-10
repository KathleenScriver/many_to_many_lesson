require 'sinatra/activerecord'
require 'require_all'
require 'pry'

require_all 'app'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'db/reviews.db'
)

binding.pry
0
