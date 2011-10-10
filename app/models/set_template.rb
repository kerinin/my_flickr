class SetTemplate < Template
  include MongoMapper::Document
  
  many :photo_sets
  
  timestamps!
end
