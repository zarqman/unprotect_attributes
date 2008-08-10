# UnprotectAttributes
# (c) 2008 t.e.morgan
# made available under the MIT license

module ActiveRecord
  class Base
    def protected_attributes=(new_attributes)
      send(:attributes=, new_attributes, false)
    end
    
    def update_protected_attributes(attributes)
      self.protected_attributes = attributes
      save
    end

    def update_protected_attributes!(attributes)
      self.protected_attributes = attributes
      save!
    end

  end
end