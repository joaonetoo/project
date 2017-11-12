class Topico < ActiveRecord::Base
  belongs_to :sessao
  has_many :marcos
end
