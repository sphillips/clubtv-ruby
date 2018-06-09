class ParseProgramData
  attr_reader :schedule, :guide
  def initialize(program_data)
    @playlist = program_data['playlist']
    @channels = @playlist['sources']
    @schedule = @playlist['schedule']
    @guide = { sources: @channels }
  end

  def create_guide
    # create empty programs array for each channel
    guide[:sources].each { |g| g.merge!(programs: []) }
    { playlist: organize_programs_by_channel }.to_json
  end

  def organize_programs_by_channel
    # organize each program into its respective channel into the programs array
    schedule.each do |program|
      channel = guide[:sources].find { |s| s['id'] == program['source'] }
      next if channel.nil? || channel['available'] == false
      channel[:programs] << program
    end
    # return the full guide with the newly sorted data
    guide
  end
end
