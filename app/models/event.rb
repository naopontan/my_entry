class Event < ActiveRecord::Base
  belongs_to :competition
  has_many :entries
  has_many :users, :through => :entries
end
