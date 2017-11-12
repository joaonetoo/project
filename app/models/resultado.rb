class Resultado < ActiveRecord::Base
  belongs_to :questionario
   has_and_belongs_to_many :marcos
end
