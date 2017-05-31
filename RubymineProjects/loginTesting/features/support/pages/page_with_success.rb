module PageWithSuccess
  include Gizmo::PageMixin

  def valid?
    title.should =~ /.*Testing.*/
  end

  def title
    find(:xpath, "//title").text
  end
end