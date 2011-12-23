class Movie < ActiveRecord::Base
  #paginate_per 10
  
  validates_presence_of :title
  belongs_to :user
end
