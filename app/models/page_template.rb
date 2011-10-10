class PageTemplate < Template
  key :fields
  
  many :pages
  
  timestamps!
end
