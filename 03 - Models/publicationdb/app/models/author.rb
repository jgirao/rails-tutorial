class Author < ActiveRecord::Base
  has_many :publication
  has_many :papers, :through => :publication
  
  attr_accessible :name, :email, :gender, :male

  validates :name,  :presence => true, 
                      :length => {:minimum => 1, :maximum => 254}
  
  validates :email, :presence => true, 
                      :length => {:minimum => 3, :maximum => 254},
                      :uniqueness => true,
                      :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  
  attr_accessor :gender
  validates :gender, :inclusion => {:in => %w{male female}, :message => "is not male or female"}
  before_save :set_male_or_female

  protected

  def set_male_or_female
    self.male = (@gender == "male")
  end

end
