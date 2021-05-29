class ArticlesController < ApplicationController

  def index

  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if (@article.save)
      # render plain: params.inspect
        render 'show'

    else
      render 'new'
    end

  end

  def show

  end

  def update

  end

  def store

  end

  def destroy

  end

  private

  def article_params
    #white list
    params.require(:article).permit(:title, :description)
  end
end
