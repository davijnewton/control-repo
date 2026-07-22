# frozen_string_literal: true

require 'spec_helper'

describe 'profile::base' do
  let(:pre_condition) { 'class myapp {}' }

  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile.with_all_deps }
    end
  end
end
