class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_param)
    if @article.persisted? 
      redirect_to root_path, notice: 'Article Created'
    else
      redirect_to new_article_path, notice: 'Error try again'
  end
 end

 private

 def article_param
   params.require(:article).permit(:title, :content)
 end
end
