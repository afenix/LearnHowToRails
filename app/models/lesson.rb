class Lesson < ActiveRecord::Base

  validates :title, :body, :presence => true

  def next
    Lesson.find_by number: number + 1
  end

  def prev
    Lesson.find_by number: number - 1
  end

end
