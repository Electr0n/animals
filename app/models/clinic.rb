class Clinic < ActiveRecord::Base
  has_one :location,  :as => :locatable,    :dependent => :destroy
  has_one :rate,      :as => :ratable,      :dependent => :destroy
  has_one :schedule,  :as => :schedulable,  :dependent => :destroy
  has_many  :phones, 
            :class_name => "Phone",   
            :as => :phonable,     
            :dependent => :destroy
  has_many  :responses, 
            :class_name => "Response", 
            :as => :responsable,  
            :dependent => :destroy

  serialize :sites, Array
end