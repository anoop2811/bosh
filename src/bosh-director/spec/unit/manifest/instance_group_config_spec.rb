require 'spec_helper'

module Bosh::Director
  describe InstanceGroupConfig do
    subject do
      described_class.new(hash)
    end

    let(:hash) do
      {
        'lifecycle' => 'errand',
      }
    end

    it 'returns the lifecycle' do
      expect(subject.lifecycle).to eq('errand')
    end
  end
end
