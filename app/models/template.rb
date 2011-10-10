class Template 
  include MongoMapper::Document

  key :name, String
  key :creator_id, Integer
  key :liquid, String
  
  timestamps!
end
