class CommentsController < ApplicationController
  before_action :set_comments
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET jobs/1/comments
  def index
    @comments = @jobs.comments
  end

  # GET jobs/1/comments/1
  def show
  end

  # GET jobs/1/comments/new
  def new
    @comment = @jobs.comments.build
  end

  # GET jobs/1/comments/1/edit
  def edit
  end

  # POST jobs/1/comments
  def create
    @comment = @jobs.comments.build(comment_params)

    if @comment.save
      redirect_to([@comment.jobs, @comment], notice: 'Comment was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT jobs/1/comments/1
  def update
    if @comment.update_attributes(comment_params)
      redirect_to([@comment.jobs, @comment], notice: 'Comment was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE jobs/1/comments/1
  def destroy
    @comment.destroy

    redirect_to jobs_comments_url(@jobs)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comments
      @jobs = Job.find(params[:jobs_id])
    end

    def set_comment
      @comment = @jobs.comments.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:message)
    end
end
