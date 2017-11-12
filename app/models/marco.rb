class Marco < ActiveRecord::Base
  belongs_to :topico
  has_and_belongs_to_many :resultados
end
