class Entry < ActiveRecord::Base
  belongs_to :event
  belongs_to :user

  delegate :competition, :to => :event
end
