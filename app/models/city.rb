class City < ApplicationRecord
    has_many :kindergartens, dependent: :destroy
end
