
class Components::Testimonials < Phlex::HTML
  include RubyUI

  def initialize(testimonials)
    @testimonials = testimonials
  end

  def test
    render div(class: "flex flex-col items-center justify-center") do
      @testimonials.each do |testimonial|
        div { testimonial[:content] }
      end
    end
  end

  def view_template
    render Carousel(options: { loop: false }, class: "w-1/2 ") do
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
      div(class: "flex justify-between") do
        div { CarouselPrevious() }
        div { CarouselNext() }
      end
    end
  end
end
