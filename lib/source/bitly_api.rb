class BitlyApi
  def initialize
    # client_id = '0eccadbb619cd6828090fe88de59418805d5b853'
    # client_secret = '21c08a67316c2c009bd1671b730d8dbeffbf5e3f'
    access_token = '611db359b895fbd5d5f2a064d30b0e50dabf1572'
    @client = BitlyOAuth.new(access_token)
  end

  def search query
    @client.search(query, limit: 10, lang: 'EN')
  end
end