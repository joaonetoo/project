class Resultado < ActiveRecord::Base
  belongs_to :questionario
   belongs_to :marcos
end
