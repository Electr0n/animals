class Location < ActiveRecord::Base
  belongs_to :locatable, :polymorphic => true, :optional => true
end
