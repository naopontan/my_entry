class User < ActiveRecord::Base
  has_many :entries
  has_many :events, :through => :entries

  default_scope :order => 'name ASC'
end
