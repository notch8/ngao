# frozen_string_literal: true

module CampusHelper
  include ActiveSupport::Concern

  CAMPUSES = {
    'US-InU' => 'Indiana University Bloomington',
    'US-InU-Sb' => 'Indiana University South Bend',
    'US-InU-Se' => 'Indiana University Southeast',
    'US-inrmiue' => 'Indiana University East',
    'US-InU-K' => 'Indiana University Kokomo',
    'US-iniu' => 'IUPUI',
    'US-InU-N' => 'Indiana University Northwest'
  }

  def convert_campus_id(value)
    CAMPUSES[value] || 'Indiana University'
  end
end
