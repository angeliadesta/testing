module PageWithGoogle
  include Gizmo::PageMixin

  def valid?
    if title =~ /.*Google.*/
      return true
    else
      return false
    end
  end

  def title
    find(:xpath,"//title").text
  end

  def fill_in_login query
    fill_in 'q', :with=> query
  end

  def click_login_button
    click_button "Gmail"
  end

  def success_main_css
    ".description"
  end

  def click_first_result
    find(:xpath, ".//*[@id='rso']/li[1]/h3/a").click
  end
end