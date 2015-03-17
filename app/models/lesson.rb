class Lesson < ActiveRecord::Base

  validates :title, :body, :presence => true
  # validates :body, :presence => true
end
