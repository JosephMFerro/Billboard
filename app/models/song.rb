class Song < ApplicationRecord
  belongs_to :billboardmodel,  optional: true
end
