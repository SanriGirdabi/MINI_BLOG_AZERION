module ApplicationHelper
  def design_checker(variable)
    @variable_for_design = variable
    if @variable_for_design.design == 'Two column'
      render 'two_column'
    else
      render 'one_column'
    end
  end

  def length_checker(variable)
    return 'disabled' if variable.empty?
    return ''
  end
end
