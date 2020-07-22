desc 'Build the Solr suggest field'
task build_solr_suggest: :environment do
  BuildSuggestJob.build_suggest_field
end
