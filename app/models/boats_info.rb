class BoatsInfo < ActiveRecord::Base
  set_table_name 'boats_info'
  # attr_accessible :title, :body
  
  def photo
    self.PHOTOS_URLS.split(';').first
  end
end
