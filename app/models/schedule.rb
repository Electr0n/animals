class Schedule < ActiveRecord::Base
  belongs_to :schedulable, :polymorphic => true, :optional => true
  serialize [:work_days, :work_hours, :break_hours], Hash
end