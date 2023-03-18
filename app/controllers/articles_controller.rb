class ArticlesController < ApplicationController

  def index
    @articles = Article.order("id DESC").limit(3)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
    @comments = @article.comments
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    if @article.save
      redirect_to article_path(@article.id)
    else
      render :edit
    end
  end

  def destroy
    article =Article.find(params[:id])
    unless article.user == current_user
      redirect_to root_path
    else
      article.destroy
      redirect_to root_path
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :content, :image).merge(user_id: current_user.id)
  end

end
