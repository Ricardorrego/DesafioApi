include ServiceBase

Dado('que eu envie os parâmetros corretos para o endpoint Books') do
  # mudo endpoint padrao para url01.
  Service.var_url = CONFIG['url01']
  # realizo o post com os dados do book_data.
  @post_clientes = Service.post '/', body: book_data
end

Entao('um novo cliente é cadastrado com sucesso na base') do
  expect(@post_clientes.code).to eq 201
  # faz o parse do body e imprime os dados.
  data = @post_clientes.response.body
  puts parse_json data
end