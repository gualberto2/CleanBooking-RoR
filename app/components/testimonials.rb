
class Components::Testimonials < Phlex::HTML
  include Phlex::Rails::Helpers::ImageTag
  include RubyUI

  def initialize(testimonials)
    @testimonials = testimonials
  end

  def test
    div(class: "flex flex-col items-center justify-center") do
      @testimonials.each do |testimonial|
        div { testimonial[:content] }
      end
    end
  end



  def view_template
    Carousel(options: { loop: true }, class: "max-w-4xl mx-auto ") do
      CarouselContent do
            @testimonials.each do |testimonial|
              CarouselItem(class: "flex-shrink-0 w-full h-full p-10") do
                div(class: "bg-white shadow-lg rounded-lg p-8") do
                  div(class: "mb-6 text-4xl text-blue-700 h-min") do
                    span { '"' }
                  end
                  p(class: "mb-8 text-lg text-gray-600") { testimonial[:content] }
                  div(class: "flex items-center") do
                    image_tag("#{testimonial[:image]}", class: "w-12 h-12 mr-4 rounded-full")
                    div() do
                      p(class: "font-semibold text-blue-900") do
                        testimonial[:author]
                      end
                      p(class: "text-sm text-gray-600") do
                        testimonial[:role]
                  end
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
