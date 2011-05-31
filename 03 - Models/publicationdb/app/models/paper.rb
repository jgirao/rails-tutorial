class Paper < ActiveRecord::Base
  attr_accessible :title, :abstract, :submitted, :accepted, :rejected
  has_many :publication
  has_many :authors, :through => :publication
end
