
class Components::RecentBlogs < Phlex::HTML
  include RubyUI

  def initialize(articles)
    @articles = articles
  end

  def test
    div(class: "flex flex-col items-center justify-center") do
      @articles.each do |article|
        div { article[:content] }
      end
    end
  end

  def view_template
    Carousel(options: { loop: false }, class: "w-full ") do
      CarouselContent do
        @articles.each do |article|
          CarouselItem do
            div(class: "p-1") do
              Card do
                CardContent(class: "flex items-center justify-center p-6") do
                  div(class: "text-4xl font-semibold") { article[:title] }
                end
              end
            end
          end
        end
      end
      CarouselPrevious()
      CarouselNext()
    end
  end
end
