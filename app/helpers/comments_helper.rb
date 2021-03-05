module CommentsHelper
  def error_checker?(variable)
    @variable = variable
    if variable.errors.any?
      render 'error_section'
    end
  end
end
