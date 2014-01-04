class Facility < ActiveRecord::Base
	has_many :items
  default_scope -> { order('created_at DESC') }
end
