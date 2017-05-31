module PageWithQastuffs
  include Gizmo::PageMixin

  def valid?
    title.should =~ /.*QA Blog.*/
  end

  def title
    find(:xpath, "//title").text
  end

end