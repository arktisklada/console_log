module ConsoleLogHelper
  def console_log_javascript_tag(development_only = true)
    render partial: 'console_log/javascript'
  end

  private

  def include_js?(development_only)
    if development_only
      Rails.env.development?
    else
      true
    end
  end
end