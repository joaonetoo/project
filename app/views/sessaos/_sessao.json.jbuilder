json.extract! sessao, :id, :questionario_id, :sigla, :descricao, :created_at, :updated_at
json.url sessao_url(sessao, format: :json)
