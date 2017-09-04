class Discount < ActiveRecord::Base
	serialize :values, Array
end