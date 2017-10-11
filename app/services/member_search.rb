class MemberSearch

  def initialize(state)
    @state = state
  end

  def members
    raw_members.map do |result|
      Member.new(result)
    end
  end

  private

    attr_reader :state

    def raw_members
      service.filter_by_state(state)
    end

    def service
      ProPublicaService.new
    end
end
