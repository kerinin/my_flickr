class PageTemplate < Template
  belongs_to :user
  
  field :keys, Array
  
  timestamps!
end
