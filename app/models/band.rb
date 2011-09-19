class Band < ActiveRecord::Base
  validates :name, :presence => true
  def toggle_favorite
    if favorite == true
      update_attributes :favorite => false
    else
      update_attributes :favorite => true
    end  
  end
end
