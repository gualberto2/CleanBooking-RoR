
class Components::RecentBlogs < Phlex::HTML
  include Phlex::Rails::Helpers::ImageTag
  include Phlex::Rails::Helpers::LinkTo
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
    Carousel(options: { loop: false }, class: " relative mx-auto max-w-7xl ") do
      CarouselContent(class: "flex gap-6 pb-8 overflow-x-auto scroll-smooth hide-scrollbar") do
        @articles.each do |article|
            div(class: "p-1") do
                div(class: "flex-shrink-0 w-[300px]  md:w-[350px] bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-xl transition-shadow") do
                  image_tag(article[:image], alt: article[:title], class: "w-full h-48 object-cover")
                  div(class: "p-6") do
                    div(class: "mb-2 text-sm text-blue-700") do
                      article[:date]
                    end
                    h3(class: "mb-3 text-xl font-semibold text-blue-900 line-clamp-2") do
                    article[:title]
                    end
                    p(class: "mb-4 text-gray-600 line-clamp-2") do
                      article[:description]
                    end
                    link_to(article[:url], class: "inline-flex items-center text-blue-700 hover:text-blue-800 font-medium") do
                      "Read More"
                    end
              end
          end
        end
      end
    end
    div(class: "md:block hidden") do
      CarouselPrevious()
      CarouselNext()
    end
    end
  end
end
