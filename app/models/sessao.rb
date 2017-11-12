class Sessao < ActiveRecord::Base
  belongs_to :questionario
  has_many :topicos
end
