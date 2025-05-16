# frozen_string_literal: true

class Views::Dashboard::Index < Views::Base
  def view_template
    h1 { "Dashboard::Index" }
    p { "Find me in " }
  end
end
