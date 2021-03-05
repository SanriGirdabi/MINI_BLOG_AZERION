module PostsHelper
  def can_comment?
    if user_signed_in?
      render 'post_comments_section'
    end
  end

  def which_button?
    if user_signed_in?
      render 'sign_up_buttons'
    else
      render 'sign_in_buttons'
    end
  end

  def authorized_buttons?(variable)
    @variable = variable
    if user_signed_in? && variable.user == current_user
      render 'authorized_buttons'
    end
  end

  def error_checker?(variable)
    @variable = variable
    if variable.errors.any?
      render 'error_section'
    end
  end
end
