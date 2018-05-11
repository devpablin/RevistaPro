class Author < ApplicationRecord
  has_many :reviews
  has_many :reports
end
