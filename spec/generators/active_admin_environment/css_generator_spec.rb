require 'spec_helper'
require 'generators/active_admin_environment/css_generator'

describe ActiveAdminEnvironment::Generators::CssGenerator do
  destination File.expand_path("../../../../tmp", __FILE__)
  before do
    prepare_destination
  end

  describe "copy css files" do
    describe "production.css" do
      subject { file('app/assets/stylesheets/active_admin_environment/production.css.scss') }
      before do
        run_generator
      end
      it { should exist }
      it { should contain(/Production/) }
    end

    describe "development.css" do
      subject { file('app/assets/stylesheets/active_admin_environment/development.css.scss') }
      before do
        run_generator
      end
      it { should exist }
      it { should contain(/Development/) }
    end
  end
end

