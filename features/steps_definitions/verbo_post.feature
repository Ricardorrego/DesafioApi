#language: pt
@post
Funcionalidade: Verbo POST em Books

  @executa_post
  Cenario: Enviar com sucesso um novo cliente
    Dado que eu envie os parâmetros corretos para o endpoint Books
    Entao um novo cliente é cadastrado com sucesso na base