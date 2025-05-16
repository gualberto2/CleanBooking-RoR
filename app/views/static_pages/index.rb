# frozen_string_literal: true

class Views::StaticPages::Index < Views::Base
  def view_template
    h1 { "StaticPages::Index" }
    p { "Find me in " }
  end
end
