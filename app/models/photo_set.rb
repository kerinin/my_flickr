class PhotoSet
  include Mongoid::Document
  
  belongs_to :set_template
  belongs_to :image_template
  belongs_to :domain
  embeds_many :images
  
  field :title, String
  field :slug, String
  field :creator_id, Integer
  
  timestamps!
end
