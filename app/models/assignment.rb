class Assignment < ActiveRecord::Base
    has_many :submits, dependent: :destroy
end
