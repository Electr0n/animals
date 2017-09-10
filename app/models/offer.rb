class Offer < ActiverRecord::Base
  serialize :conditions, Array
  serialize :advantages, Array
end