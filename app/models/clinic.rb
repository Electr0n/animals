class Clinic < ActiveRecord::Base
  has_one :location, :as => :place,    :dependent => :destroy
  # has_one :coords,     :dependent => :destroy
  # has_one :schedule,   :dependent => :destroy
  # has_one :about,      :dependent => :destroy
  # has_one :rate,       :dependent => :destroy
end