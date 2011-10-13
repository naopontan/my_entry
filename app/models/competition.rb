class Competition < ActiveRecord::Base
  has_many :events
  has_many :male_events, :class_name => "Event", :conditions => {:is_male => true}
  has_many :female_events, :class_name => "Event", :conditions => {:is_male => false}
end
