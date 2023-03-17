class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to "/articles/#{@comment.article.id}"
    else
      @article = @comment.article
      @comments = @article.comments
      render template: "articles/show"
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    article = comment.article
    comment.destroy
    redirect_to "/articles/#{comment.article.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:graduating_class, :name, :message).merge(article_id: params[:article_id])
  end

end
