class ProPublicaService

  def initialize
    @conn = Faraday.new(url: "https://api.propublica.org") do |faraday|
            faraday.headers["X-API-KEY"] = ENV["propublica_key"]
            faraday.adapter Faraday.default_adapter
      end
  end

  def filter_by_state(state)
    response = get_response(state)
    parse_response(response)
  end

  def get_response(state)
    conn.get("/congress/v1/members/house/#{state}/current.json")
  end

  def parse_response(response)
    JSON.parse(response.body, symbolize_names: true)[:results]
  end
  private

  attr_reader :conn

end
