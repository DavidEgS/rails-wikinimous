class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    set_article
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
  end

  def edit
    set_article
  end

  def update
    set_article
    @article.update(article_params)
  end

  def destroy
    set_article
    @article.destroy
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
