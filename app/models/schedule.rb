class Schedule < ActiveRecord::Base
  belongs_to :schedulable, :polymorphic => true
  serialize [:work_days, :work_hours, :break_hours], Hash
end