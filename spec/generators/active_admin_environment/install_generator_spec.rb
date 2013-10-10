require 'spec_helper'
require 'generators/active_admin_environment/install_generator'

describe ActiveAdminEnvironment::Generators::InstallGenerator do
  destination File.expand_path("../../../../tmp", __FILE__)
  before do
    prepare_destination
  end

  describe "copy initializer" do
    subject { file('config/initializers/active_admin_environment.rb') }
    before do
      run_generator
    end

    describe 'exists initilizer file' do
      it { should exist }
      it { should contain(/production/) }
      it { should contain(/development/) }
    end
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

