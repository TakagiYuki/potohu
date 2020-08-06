module ApplicationHelper

  def full_title(page_title = '')
    base_title = "ここいこ。"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def is_logged_in?
    !session[:user_id].nil?
  end

  def full_url(path)
  domain = if Rails.env.development?
             'http://localhost:3000'
           else
             'https://cocoiko.blog'
           end
  "#{domain}#{path}"
  end

end