class News
  def initialize(news_service)
    @api_key="9dff71e1deb14081bf0d87580775fc51"
    @base_path = "https://newsapi.org/v1/articles"
    @news_service = news_service
  end

  def articles
    HTTParty.get("#{base_path}?source=#{news_service}&sortBy=top&apiKey=#{api_key}")['articles']
  end

  private

  attr_reader :api_key, :base_path, :news_service
# "title": "Apple just offered a 'dead giveaway' that it's building an AI chip for iPhones, expert says",
# "description": "Apple's new Core ML software library opens the door for new silicon for machine learning workloads.",
# "url": "http://www.cnbc.com/2017/06/09/apples-core-ml-software-suggests-ai-chip-coming.html",
# "urlToImage": "https://fm.cnbc.com/applications/cnbc.com/resources/img/editorial/2017/06/06/104512717-GettyImages-692719308-tim-cook.1910x1000.jpg",

end
