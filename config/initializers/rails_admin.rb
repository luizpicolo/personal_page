RailsAdmin.config do |config|

  ################  Global configuration  ################
  config.main_app_name = ['Luiz Picolo', 'Admin']
  config.default_items_per_page = 20
  config.compact_show_view = false

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ###  User  ###
    config.model 'User' do
      navigation_label 'Usuários'
      #navigation_icon 'icon-user'
      list do
        field :id
        field :email
        field :updated_at
        field :admin
      end
      edit do
        field :email
        field :password
        field :password_confirmation
      end
      # show do
      #   field :email
      #   field :admin
      # end
    end

    ###  Articles  ###
    config.model 'Article' do
      navigation_label 'Artigos'
      #navigation_icon 'icon-user'
      list do
        field :id
        field :title
        field :summary
        field :date_publish
      end
      edit do
        field :title
        field :date_publish do
          date_format :default
        end
        field :summary
        field :categories
        field :article_attachments
        field :body, :wysihtml5 do
          config_options :html => true
        end
      end
      # show do
      #   field :email
      #   field :admin
      # end
    end

    ###  Articles  ###
    config.model 'Category' do
      navigation_label 'Artigos'
      #navigation_icon 'icon-user'
      list do
        field :id
        field :name
      end
      edit do
        field :name
      end
      # show do
      #   field :email
      #   field :admin
      # end
    end

    ###  Articles  ###
    config.model 'ArticleAttachment' do
      navigation_label 'Artigos'
      #navigation_icon 'icon-user'
      list do
        field :id
        field :title
        field :image
      end
      edit do
        field :title
        field :image, :carrierwave
        field :hightlight
      end
      # show do
      #   field :email
      #   field :admin
      # end
    end

    ###  Articles  ###
    config.model 'About' do
      navigation_label 'Quem Sou'
      #navigation_icon 'icon-user'
      list do
        field :id
        field :title
        field :image
      end
      edit do
        field :title
        field :image, :carrierwave
        field :body, :wysihtml5 do
          config_options :html => true
        end
      end
      # show do
      #   field :email
      #   field :admin
      # end
    end
  end
end
