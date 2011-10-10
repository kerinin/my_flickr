class Image
  include MongoMapper::EmbeddedDocument
  
  key :domain, String
  key :title, String
  key :slug, String
  key :creator_id, Integer
  
  timestamps!
end
