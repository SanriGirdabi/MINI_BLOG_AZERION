class CommentsController < ApplicationController
  before_action :set_comment, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: %i[create update destroy]

  # POST /comments or /comments.json
  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to request.referrer, notice: 'Comment was successfully created.' }
      else
        format.html { redirect_to request.referrer, notice: 'Something was wrong.' }
      end
    end
  end

  def show
    if !@comment
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'You are not allowed to do this!' }
      end
    end
  end

  def edit
    @post = @comment.post
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    if check_current_user(@comment.user)
      respond_to do |format|
        if @comment.update(comment_params)
          format.html { redirect_to @comment.post, notice: 'Comment was successfully updated.' }
        else
          format.html { render :edit, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to @comment.post, notice: 'You are not allowed to do this!' }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = current_user.comments.find_by(id: params[:id])
  end

  # Only allow a list of trusted parameters through.
  def comment_params
    params.require(:comment).permit(:body, :post_id).with_defaults(user_id: current_user.id,
                                                                   date: Time.now.in_time_zone('Istanbul').to_date)
  end
end
