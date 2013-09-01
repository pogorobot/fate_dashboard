class Aspect < ActiveRecord::Base
  validates :text, :presence => true
end