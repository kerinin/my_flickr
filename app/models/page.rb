class Page
  include Mongoid::Document
  include Mongoid::Timestamps
  
  belongs_to :page_template
  belongs_to :domain
  embeds_many :fields
  
  field :title, :class => String
  field :slug, :class => String
  field :creator_id, :class => Integer
end
