class Post < ActiveRecord::Base
  validates :name, presence: true
  validates :comment, presence: true
end
