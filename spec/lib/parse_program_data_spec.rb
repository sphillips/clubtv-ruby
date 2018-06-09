require 'json'
require_relative '../../lib/parse_program_data'

describe ParseProgramData do
  program_data = File.read(File.expand_path('test_program_data.json', __dir__))
  parse_data = ParseProgramData.new(JSON.parse(program_data))
  guide = JSON.parse(parse_data.create_guide)

  describe 'create_guide' do
    it 'assembles program data into channels' do
      expect(guide['playlist']).not_to be_nil
      expect(guide['playlist']['sources'].count).to be > 0
      expect(guide['playlist']['sources'][0]['programs'].count).to be > 0
    end
  end
end
