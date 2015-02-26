class Article < ActiveRecord::Base
  include DateHelper

  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, :summary, :date_publish, :body, :presence => true

  has_and_belongs_to_many :categories
  has_many :article_attachments, dependent: :destroy

  accepts_nested_attributes_for :article_attachments, :allow_destroy => true

  def markdown
    options = {
      fenced_code_blocks: true,
      no_intra_emphasis: true,
      lax_html_blocks: true
    }

    extensions = {
      autolink: true,
      superscript: true,
      disable_indented_code_blocks: true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    markdown.render(self.body).html_safe
  end
end
