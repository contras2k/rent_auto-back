# app/models/model.rb
class Model < ApplicationRecord
  belongs_to :model_class
  belongs_to :brand
  belongs_to :manufacture
  belongs_to :body_type
end
