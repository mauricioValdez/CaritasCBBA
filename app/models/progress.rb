class Progress < ActiveRecord::Base
    belongs_to :workshop
    belongs_to :course
end