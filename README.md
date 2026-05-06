# Learnflow

A visitor-facing edtech landing page built with Ruby on Rails 8. 
Designed to practice Growth team patterns: A/B testing, conversion 
funnels, ERB and HAML templating, and server-side rendering.

## Live features

- A/B tested CTA on the landing page — randomly assigns 
  "Start Learning Free" or "Try 8 Weeks Free" on each visit
- Course catalog with three subjects, each with a detail page
- Signup conversion funnel with POST form and redirect
- HAML and ERB views side by side on the course detail page
- Shared layout with nav bar via application.html.erb

## Stack

- Ruby 3.2.2
- Rails 8.1.3
- HAML (via haml-rails gem)
- CSS — no framework, handwritten
- WSL / Ubuntu on Windows

## Run locally

```bash
git clone https://github.com/iroussos25/learnflow
cd learnflow
bundle install
rails s
```

Visit `http://localhost:3000`

## What I learned

Built in one session as a deliberate practice exercise before a 
technical interview. Covers the full Rails request cycle — routing, 
controller instance variables, ERB loops, HAML syntax, form_with 
POST handling, and layout files. The A/B test mirrors the kind of 
variant assignment a Growth team engineer would implement on a 
real conversion funnel.
