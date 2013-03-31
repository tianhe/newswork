class BitlyApi
  def initialize options
    @limit = options[:limit] || 5
    @client = BitlyOAuth.new(options[:access_token])
  end

  def search query
    @client.search(query, limit: @limit, lang: 'EN')['results']
  end
end