class Business < ActiveRecord::Base
  belongs_to :category

  validates :name, :presence => true
  validates :phone_number, :presence => true
  validates :hours, :presence => true
  validates :address, :presence => true
  validates :website, :presence => true
end
