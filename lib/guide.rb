require_relative 'fetch_program_data'
require_relative 'parse_program_data'

class ChannelGuide
  def self.output_guide
    program_data = FetchProgramData.new.fetch
    epg = ParseProgramData.new(program_data).create_guide
    puts epg
  end
end
