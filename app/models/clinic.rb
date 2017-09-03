class Clinic < ActiveRecord::Base
  has_one :location,  :as => :locatable,    :dependent => :destroy
  has_one :rate,      :as => :ratable,      :dependent => :destroy
  has_one :schedule,  :as => :schedulable,  :dependent => :destroy
  # has_one :about,      :dependent => :destroy
end