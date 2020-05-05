class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    id = params[:id]
    @article = Article.find(id)
  end

  def new
  end

  def create
    article = Article.create(article_params)

    redirect_to article
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
