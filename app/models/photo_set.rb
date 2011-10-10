class PhotoSet
  include Mongoid::Document
  include Mongoid::Timestamps
  
  belongs_to :set_template
  belongs_to :image_template
  belongs_to :domain
  embeds_many :images
  
  field :title, :class => String
  field :slug, :class => String
  field :creator_id, :class => Integer
end
