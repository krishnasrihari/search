class BoatsInfo < ActiveRecord::Base
  set_table_name 'boats_info'
  paginates_per 20
  # attr_accessible :title, :body
  
  def photo
    self.PHOTOS_URLS.split(';').first
  end
end
