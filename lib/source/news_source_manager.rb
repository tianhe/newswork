class NewsSourceManager
  SOURCE = %w(bitly)

  def initialize source
    raise 'Client Not Supported: Please choose from #{APIS}' unless NewsSourceManager.valid_source(source)

    if source.downcase == 'bitly'
    # client_id = '0eccadbb619cd6828090fe88de59418805d5b853'
    # client_secret = '21c08a67316c2c009bd1671b730d8dbeffbf5e3f'
      @source = BitlyApi.new(access_token: '611db359b895fbd5d5f2a064d30b0e50dabf1572', limit: 3)
    end
  end

  def create_links interest
    pull_news(interest.name).each do |result|
      if attributes = prepare_for_create(result)
        interest.links.create(attributes)
      end
    end
  end

  def self.valid_source source
    SOURCE.include?(source)
  end

private

  def pull_news query
    @source.search(query)
  end

  def prepare_for_create result
    begin
      uri = URI.parse(result['url'])
      result['title'] = result['title'][0, 255]
      result.keep_if { |k, v| Link.accessible_attributes.to_a.include? k }
    rescue URI::InvalidURIError
      false
    end
  end

end