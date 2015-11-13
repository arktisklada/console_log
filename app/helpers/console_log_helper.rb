module ConsoleLogHelper
  def javascript_include_console_log(development_only = true)
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