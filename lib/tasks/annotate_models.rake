# frozen_string_literal: true

namespace :annotate do
  desc 'Update model annotations'
  task models: :environment do
    system('bundle exec annotate')
  end
end

Rake::Task['db:migrate'].enhance ['annotate:models']
