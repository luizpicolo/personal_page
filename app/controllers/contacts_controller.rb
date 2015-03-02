class ContactsController < ApplicationController
  def index
    @contacts = Contact.all

    @title = "Luiz Picolo - Contatos"
    @description = "Entre em contato comigo. Seus comentários e sugestões são muito importantes. No momento não atuo mais como freelancer e não tenho disponibilidade para novos trabalhos. Se você é desenvolvedor Ruby ou PHP iniciante e está procurando informações sobre trabalho e carreira, acesse meu blog, é lá onde eu publico todas as dicas sobre o assunto. E se você quiser pode falar comigo no contato luizpicolo@gmail.com, mas já aviso que não respondo nada que você possa encontrar sozinho no meu blog ou no Google =)".first(255)
  end
end
