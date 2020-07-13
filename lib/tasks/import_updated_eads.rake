# frozen_string_literal: true

desc 'Import and Index EADs'
task import_updated_eads: :environment do
  EadProcessor.import_updated_eads
end
