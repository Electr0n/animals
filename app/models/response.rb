class Response < ActiveRecord::Base
	belongs_to :responsable, :polymorphic => true, :optional => true
end