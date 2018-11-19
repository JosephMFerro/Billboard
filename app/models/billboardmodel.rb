class Billboardmodel < ApplicationRecord
  has_many :songs, dependent: :destroy
end
