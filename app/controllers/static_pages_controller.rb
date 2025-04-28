class StaticPagesController < ApplicationController
  def landing_page
    @testimonials = [
      {
        id: 1,
        content:
          "The cleaners are professional, punctual, and incredibly thorough. My home has never looked so clean and inviting. Plus, they use eco-friendly products, which is a big plus for me. I highly recommend to anyone in need of top-notch cleaning services. I'll definitely be scheduling regular cleanings with them!",
        author: "Jhon Due",
        role: "House Owner",
        avatar: "https://randomuser.me/api/portraits/men/1.jpg"
      },
      {
        id: 2,
        content:
          "Outstanding service! The team was efficient and detail-oriented. They transformed my office space into a spotless environment. Their commitment to quality is evident in every aspect of their work.",
        author: "Sarah Johnson",
        role: "Business Owner",
        avatar: "https://randomuser.me/api/portraits/women/2.jpg"
      },
      {
        id: 3,
        content:
          "Exceptional cleaning service! The attention to detail and professionalism exceeded my expectations. The team is reliable, thorough, and always goes the extra mile.",
        author: "Michael Chen",
        role: "Restaurant Manager",
        avatar: "https://randomuser.me/api/portraits/men/3.jpg"
      }
    ]

@articles =[ {
  id: 1,
  title: "The Future of Cleaning Management Software",
  description: "Discover how AI and automation are transforming the cleaning industry landscape.",
  date: "Apr 20, 2024",
  url: "#",
  image: "https://images.unsplash.com/photo-1600880292203-757bb62b4baf?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"
}, {
  id: 2,
  title: "Sustainable Cleaning Practices for 2024",
  description: "Eco-friendly cleaning solutions that benefit both your business and the environment.",
  date: "Apr 18, 2024",
  url: "#",

  image: "https://images.unsplash.com/photo-1528740561666-dc2479dc08ab?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"
}, {
  id: 3,
  title: "Maximizing Efficiency in Team Management",
  description: "Learn how to optimize your cleaning team's performance with modern tools.",
  url: "#",

  date: "Apr 15, 2024",
  image: "https://images.unsplash.com/photo-1556761175-5973dc0f32e7?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"
}, {
  id: 4,
  title: "Client Communication Best Practices",
  description: "Effective strategies for maintaining strong client relationships in the cleaning industry.",
  date: "Apr 12, 2024",
  url: "#",

  image: "https://images.unsplash.com/photo-1573497620053-ea5300f94f21?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"
}, {
  id: 5,
  title: "Growing Your Cleaning Business",
  description: "Expert tips for scaling your cleaning company in today's competitive market.",
  date: "Apr 10, 2024",
  url: "#",

  image: "https://images.unsplash.com/photo-1542744173-8e7e53415bb0?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"
}, {
  id: 6,
  title: "Technology Trends in Cleaning Services",
  url: "#",
  description: "Stay ahead with the latest technological innovations in the cleaning industry.",
  date: "Apr 8, 2024",
  image: "https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"
} ]

@pricing_plans = [ {
  name: "Standard",
  price: "12",
  period: "per month",
  description: "Perfect for small cleaning businesses",
  icon: "star",
  features: [ "5 Team Members", "10 Active Bookings", "Basic Analytics", "Client Management", "Email Support" ],
  limits: {
    services: 5,
    projects: 5,
    teamMembers: 5
  },
  highlighted: false
}, {
  name: "Premium",
  price: "20",
  period: "per month",
  description: "Ideal for growing cleaning agencies",
  icon: "crown",
  features: [ "10 Team Members", "Unlimited Bookings", "Advanced Analytics", "Priority Support", "Custom Branding" ],
  limits: {
    services: 10,
    projects: 10,
    teamMembers: 10
  },
  highlighted: true
}, {
  name: "Platinum",
  price: "30",
  period: "per month",
  description: "For large cleaning enterprises",
  icon: "sparkles",
  features: [ "Unlimited Team Members", "Unlimited Everything", "Custom Analytics", "24/7 Support", "White Label Solution" ],
  limits: {
    services: 30,
    projects: 30,
    teamMembers: 30
  },
  highlighted: false
} ]
  end

  def dashboard
  end
end
