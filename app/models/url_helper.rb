class UrlHelper

  attr_reader :connection

  def self.get_summary(url)
    begin
      resp = Net::HTTP.get_response(URI.parse(url))
    rescue
      {url_h1: 'n/a', title: 'n/a' }
    else
      get_summary_data(resp)
    end
  end

  def self.get_summary_data(resp)
    h1 = get_url(resp)
    title = get_title(resp)
    {url_h1: h1, title: title}
  end

  def self.get_url(resp)
    if resp.body.index('<h1>')
      h1_start = (resp.body.index('<h1>') + 4)
      h1_end = (resp.body.index('</h1>') - 1)
      resp.body[h1_start..h1_end]
    else
      "n/a"
    end
  end

  def self.get_title(resp)
    if resp.body.index('<h1>')
      title_start = (resp.body.index('<title>') + 7)
      title_end = (resp.body.index('</title>') - 1)
      resp.body[title_start..title_end]
    else
      "n/a"
    end
  end

end
