module CommentsHelper
  def error_checker?(variable)
    @variable = variable
    if variable.errors.any?
      render 'error_section'
    end
  end

  def check_comment_auth(variable)
    if variable == current_user
      render 'edit_button'
    end
  end
end
