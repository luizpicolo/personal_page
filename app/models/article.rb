# Article model
class Article < ActiveRecord::Base
  include DateHelper
  include Rails.application.routes.url_helpers

  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, :summary, :date_publish, :body, presence: true

  has_and_belongs_to_many :categories
  has_many :article_attachments, dependent: :destroy

  accepts_nested_attributes_for :article_attachments, allow_destroy: true

  def markdown
    options = {
      fenced_code_blocks: true, no_intra_emphasis: true, lax_html_blocks: true
    }

    extensions = {
      autolink: true, superscript: true, highlight: true,
      footnotes: true, disable_indented_code_blocks: true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    markdown.render(body).html_safe
  end

  def link_article
    date = date_publish

    link = show_article_path(
      year: date.year,
      month: date.strftime('%m'),
      day: date.strftime('%d'),
      slug: slug
    ) << '/'

    link
  end
end
