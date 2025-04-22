class StaticPagesController < ApplicationController
  def landing_page
    @testimonials = [
  {
    id: 1,
    content: "The cleaners are professional, punctual, and incredibly thorough...",
    author: "Jhon Due",
    role: "House Owner",
    avatar: "https://randomuser.me/api/portraits/men/1.jpg"
  },
  {
    id: 2,
    content: "Outstanding service! The team was efficient and detail-oriented...",
    author: "Sarah Johnson",
    role: "Business Owner",
    avatar: "https://randomuser.me/api/portraits/women/2.jpg"
  },
  {
    id: 3,
    content: "Exceptional cleaning service! The attention to detail and professionalism...",
    author: "Michael Chen",
    role: "Restaurant Manager",
    avatar: "https://randomuser.me/api/portraits/men/3.jpg"
  }
]
  end

  def dashboard
  end
end
