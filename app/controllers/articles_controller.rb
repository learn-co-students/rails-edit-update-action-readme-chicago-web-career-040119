# require 'pry'
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
    # binding.pry
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

   def edit
    @article = Article.find(params[:id])
  end
#raise method will cause the application to pause and print out the params on an error page
  def update
    # binding.pry
     #look for the query in the database
     @article = Article.find(params[:id])
     @article.update(title: params[:article][:title], description: params[:article][:description])
     redirect_to article_path(@article)
  end

end
