require 'spec_helper'

describe ScormCloud::Base do
  describe '#prepare_url' do
    it 'escapes params in querystring' do
      connection = described_class.new('', '')
      url = connection.send(:prepare_url, '', {foo: 'bar & baz'})
      expect(url).to include 'bar+%26+baz'
    end
  end
end
