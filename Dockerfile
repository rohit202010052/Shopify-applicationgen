# Base image for Ruby on Rails
FROM ruby:3.1-alpine

# Working directory within the container
WORKDIR /app

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install RubyGems dependencies
RUN bundle install

# Copy your Rails application code
COPY . .

# Expose Rails port (default: 3000)
EXPOSE 3000

# Command to start the Rails application
CMD ["rails", "server", "-b", "0.0.0.0"]
