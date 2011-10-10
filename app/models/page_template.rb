class PageTemplate < Template
  include Mongoid::Timestamps
  
  belongs_to :user
  
  field :keys, :class => Array
end
