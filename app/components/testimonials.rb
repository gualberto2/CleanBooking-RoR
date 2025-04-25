
class Components::Testimonials < Phlex::HTML
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
    Carousel(options: { loop: true }, class: "w-full ") do
      CarouselContent do
        @testimonials.each do |testimonial|
          CarouselItem do
            div(class: "p-1") do
              Card do
                CardContent(class: "flex items-center justify-center p-6") do
                  div(class: "text-4xl font-semibold") { testimonial[:content] }
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
