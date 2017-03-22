require "spec_helper"

describe Belugas::Languages::Collection do
  before {
    @project = Belugas::Project.new(".")
  }

  subject { Belugas::Languages::Collection.new(@project) }

  it "responds to languages" do
    expect(subject.languages.sample).to be_kind_of(Belugas::Language)
  end

  it "responds to project" do
    expect(subject.project).to eq(@project)
  end

  pending
  it "responds to to_json" do
    expect(subject.to_json).to eq([{"type":"feature","name":"Ruby","description":"The application uses Ruby code","categories":["Language"],"cue_locations":["Gemfile","Gemfile.lock","Rakefile","belugas.gemspec","bin/belugas-linguist","bin/console","lib/belugas.rb","lib/belugas/language.rb","lib/belugas/languages/collection.rb","lib/belugas/project.rb","lib/belugas/report.rb","lib/belugas/serializers.rb","lib/belugas/serializers/base.rb","lib/belugas/serializers/language.rb","lib/belugas/serializers/project.rb","lib/belugas/utils.rb","lib/belugas/version.rb","spec/belugas_spec.rb","spec/spec_helper.rb"],"engines":["belugas"],"meta":{"ratio":0.984772753690573,"total_files":20}},{"type":"feature","name":"Shell","description":"The application uses Shell code","categories":["Language"],"cue_locations":["bin/setup"],"engines":["belugas"],"meta":{"ratio":0.015227246309426944,"total_files":20}}].to_json)
  end
end
