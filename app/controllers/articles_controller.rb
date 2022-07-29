class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    # render plain: params.inspect
    @article = Article.new(article_params)


    if (@article.save)
      # render plain: params.inspect
      # redirect_to articles_path
      flash[:notice] = "Article successfully created"
      # byebug
      # redirect_to articles_path(@article)
      redirect_to :action => "show", :id => @article
    else
      render 'new'
    end

  end

  def show
      # render plain: params[:article].inspect
    @article = Article.find(params[:id])

  end

  def edit
    @article = Article.find(params[:id])

  end

  def update
        # render plain: params[:article].inspect
    @article=Article.find params[:id]
        if @article.update(article_params)
            redirect_to @article
        end

  end


  def destroy
    @article = Article.find(params[:id])
    if (@article.destroy)
      # render plain: params.inspect
      # redirect_to articles_path
      flash[:notice] = "Article successfully destroyed"
      # byebug
      # redirect_to articles_path(@article)
      redirect_to :action => "index"
    else
      render 'index'
    end


  end

  private

  def article_params
    #white list
    params.require(:article).permit(:title, :description)
  end
end
