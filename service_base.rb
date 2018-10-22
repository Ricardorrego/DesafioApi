require 'httparty'

=begin
O Service modulo vai encapsular as configurações httparty dentro do modulo Service.
Assim não precisa chamada self.class e reduz as configurações no envio.

O ServiceBase modulo tem funções globais no Projeto.
=end

module Service

  include HTTParty
  class << self;
    attr_accessor :var_url; # uso para alterar a url de fora.
  end
  base_uri var_url
  format :json
  open_timeout 30
  headers 'Content-Type' => 'application/json'
  default_options.update(verify: false)
end

module ServiceBase

  # gera o corpo json do request via faker.
  def book_data
    body = {
        id: rand(1000),
        title: Faker::Book.title,
        description: Faker::Book.author,
        completed: true,
    }.to_json
  end

  # faz o parse dos dados para hash e remove os false.
  def parse_json(data)
    raise 'Os dados são nulos!' if data.nil?
    JSON.parse(data).each{ |hash|
      hash.delete_if { |k, v| v == false }
    }
  end

end