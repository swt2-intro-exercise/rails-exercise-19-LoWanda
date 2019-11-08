class PapersController < ApplicationController
  before_action :set_paper, only: [:show, :edit, :update, :destroy]

  def index
    @papers = Paper.published(params[:year])
  end

  def show
    @paper = Paper.find(params[:id])
  end

  def new
    @paper = Paper.new
  end

  def edit 
    @paper = Paper.find(params[:id])
  end

  def create
    @paper = Paper.new(paper_params)

    if @paper.save
      redirect_to @paper, notice: 'Paper was successfully created.'
    else
      render :new
    end
  end

  def update
    if @paper.update(paper_params)
      redirect_to @paper, notice: 'Paper was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @paper = Paper.find(params[:id])
    @paper.destroy
    redirect_to papers_url, notice: 'Paper was successfully deleted.'
  end

  private
    def set_paper
      @paper = Paper.find(params[:id])
    end
    
    def paper_params
      params.require(:paper).permit(:title, :venue, :year, :author_ids => [])
    end
end
