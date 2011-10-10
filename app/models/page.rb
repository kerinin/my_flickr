class Page
  include MongoMapper::Document
  
  belongs_to :page_template
  many :fields
  
  key :domain, String
  key :title, String
  key :slug, String
  key :creator_id, Integer
  
  timestamps!
end
