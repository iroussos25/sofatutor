class PagesController < ApplicationController

  COURSES = [
    { id: 1, title: "Mathematics", description: "From fractions to calculus, step by step.", topics: ["Fractions & Decimals", "Algebra", "Geometry", "Calculus Basics"] },
    { id: 2, title: "English", description: "Reading, writing, and grammar fundamentals.", topics: ["Reading Comprehension", "Essay Writing", "Grammar", "Vocabulary"] },
    { id: 3, title: "Science", description: "Explore biology, chemistry, and physics.", topics: ["Cell Biology", "Chemical Reactions", "Forces & Motion", "Ecosystems"] },
  ]

  def landing
    @courses = COURSES
    @cta = ["Start Learning Free", "Try 8 Weeks Free"].sample
  end

  def course
    @course = COURSES.find { |c| c[:id] == params[:id].to_i }
  end

  def signup
  end
  def signup_submit
  redirect_to thankyou_path
end

  def thankyou
  end

end