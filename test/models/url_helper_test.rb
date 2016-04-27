

class UrlHelperTest < ActiveSupport::TestCase

  test "the helper can get a summary from invalid link" do
    resp = UrlHelper.get_summary('http://www.google.com')

    assert_equal resp, {:url_h1=>"n/a", :title=>"n/a"}
  end

  test "the helper can get a summary from valid link" do
    resp = UrlHelper.get_summary('http://today.turing.io/outlines/2016-04-26/')

    assert_equal resp[:url_h1], "<a href=\"http://turing.io\">Turing School of Software & Design</a>"
  end

end
