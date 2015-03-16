#encoding: UTF-8

xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Luiz Picolo - Desenvolvimento Web"
    xml.author "Luiz Picolo"
    xml.description "Software-Development"
    xml.link "https://www.luizpicolo.com.br"
    xml.language "pt-BR"

    for article in @articles
      xml.item do
        if article.title
          xml.title article.title
        else
          xml.title ""
        end
        xml.author "Luiz Picolo"
        xml.pubDate article.created_at.to_s(:rfc822)
        xml.link "https://www.luizpicolo.com.br/" << article.link_article
        xml.guid article.id
        xml.description "<p>" + article.summary + "</p>"

      end
    end
  end
end
