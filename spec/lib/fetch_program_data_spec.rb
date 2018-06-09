require_relative '../../lib/fetch_program_data'

describe FetchProgramData do
  fetch_data = FetchProgramData.new

  describe 'fetch' do
    it 'returns a proper response' do
      expect(fetch_data.fetch).not_to be_nil
    end
  end
end
