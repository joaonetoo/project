class Resultado < ActiveRecord::Base
  belongs_to :questionario
  has_many :marcos
end
