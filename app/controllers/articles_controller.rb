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

  def edit
    @article = Article.find(params[:id])
   
  end

  def save
   @article = Article.find(params[:id])
   @article = Article.save(article_param)
   if @article.persisted?
    redirect_to article_path(:id), notice: "Article updated!"
  else
    redirect_to edit_article_path, notice: "error, try again"
  end
end


 private

 def article_param
   params.require(:article).permit(:title, :content)
 end
end
