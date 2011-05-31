class Publication < ActiveRecord::Base
  belongs_to :author
  belongs_to :paper
  
  validates_uniqueness_of :author_id, :scope => :paper_id
end
