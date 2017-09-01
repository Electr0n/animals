class Location < ActiveRecord::Base
  belongs_to :place, :polymorphic => true
end