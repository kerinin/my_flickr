class ImageTemplate < Template
  include Mongoid::Timestamps
  
  belongs_to :user
end
