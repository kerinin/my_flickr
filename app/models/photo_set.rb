class PhotoSet
  include MongoMapper::Document
  
  belongs_to :set_template
  belongs_to :image_template
  many :images
  
  key :domain, String
  key :title, String
  key :slug, String
  key :creator_id, Integer
  
  timestamps!
end
