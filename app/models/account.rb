class Account < ActiveRecord::Base
  has_many :users

  scope :active, -> { where(:active => true) }

end

