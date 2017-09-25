class Phone < ActiveRecord::Base
	belongs_to :phonable, :polymorphic => true, :optional => true
end