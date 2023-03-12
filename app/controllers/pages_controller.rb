class PagesController < ApplicationController
  def articles
    @articles = Article.order("id DESC")
  end
  
  def result
  end

  def member
  end

end
