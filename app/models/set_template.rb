class SetTemplate < Template
  include Mongoid::Document
  
  belongs_to :user
  
  timestamps!
end
