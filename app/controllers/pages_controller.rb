class PagesController < ApplicationController
  COURSES = [
    { id: 1, title: "Mathematics", description: "From fractions to calculus, step by step.", topics: [ "Fractions & Decimals", "Algebra", "Geometry", "Calculus Basics" ] },
    { id: 2, title: "English", description: "Reading, writing, and grammar fundamentals.", topics: [ "Reading Comprehension", "Essay Writing", "Grammar", "Vocabulary" ] },
    { id: 3, title: "Science", description: "Explore biology, chemistry, and physics.", topics: [ "Cell Biology", "Chemical Reactions", "Forces & Motion", "Ecosystems" ] }
  ]

  VARIANTS = {
    "control" => "Start Learning Free",
    "treatment" => "Try 8 Weeks Free"
  }

  def landing
    @courses = COURSES

    if session[:converted]
      @cta = "Continue Learning"
    else
      token = session[:visitor_token]
      assignment = Assignment.find_by(visitor_token: token) if token

      if assignment.nil?
        token = SecureRandom.hex(8)
        variant = VARIANTS.keys.sample
        assignment = Assignment.create(visitor_token: token, variant: variant)
        session[:visitor_token] = token
      end

      @cta = VARIANTS[assignment.variant]
    end
  end

  def course
    @course = COURSES.find { |c| c[:id] == params[:id].to_i }
  end

  def signup
  end

  def signup_submit
    token = session[:visitor_token]
    assignment = Assignment.find_by(visitor_token: token) if token

    if assignment && !assignment.conversion
      Conversion.create(assignment: assignment)
      session[:converted] = true
    end

    redirect_to thankyou_path
  end

  def thankyou
  end
end
