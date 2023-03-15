class PagesController < ApplicationController
  before_action :basic, only: [:news_letter]


  def articles
    @articles = Article.order("id DESC")
  end
  
  def result
  end

  def member
  end

  def news_letter
  end

  def basic
    authenticate_or_request_with_http_basic do |name, password|
      name == ENV['BASIC_AUTH_NAME'] && password == ENV['BASIC_AUTH_PASS']
    end
  end

end
