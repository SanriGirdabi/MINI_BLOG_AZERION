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

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = Comment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def comment_params
    params.permit(:body, :post_id).with_defaults(user_id: current_user.id,
                                                 date: Time.now.in_time_zone('Istanbul').to_date)
  end
end
