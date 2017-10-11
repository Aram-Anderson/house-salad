class Member

  attr_reader :role,
              :party,
              :district,
              :seniority,
              :id

  def initialize(attributes = {})
    @first_name = attributes[:first_name]
    @last_name  = attributes[:last_name]
    @id         = attributes[:id]
    @role       = attributes[:role]
    @party      = attributes[:party]
    @district   = attributes[:district]
    @seniority  = attributes[:seniority].to_i
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  private

  attr_reader :attributes
end
