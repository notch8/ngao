# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ArclightHelper, type: :helper do
  describe 'document_counter' do
    it 'renders the document index with the appropriate counter' do
      assign(:response, instance_double(Blacklight::Solr::Response, start: 0))
      expect(helper.document_counter(0)).to be(1)
      expect(helper.document_counter(1)).to be(2)
    end
  end
end
