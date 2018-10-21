Dado('que eu faça um GET no endpoint clientes') do
  @get_clientes = Service.get '/'
end

Entao('o retorno dele será todos os clientes cadastrados') do
  expect(@get_clientes.code).to eq 200
  # faz o parse do body e imprime os dados.
  data = @get_clientes.response.body
  puts parse_json data
end