require 'active_support/all'
require_relative "../lib/check_tag"
require 'fixtures/application'
require 'rspec/rails'
include CheckTag
include ActionView::Helpers

describe CheckTag do
  describe "#check_tag" do
    context "new check tag with only the id" do
      let(:ct)            { check_tag("my_id") }

      it "returns a hidden tag set to false" do
        ct.should include('<input id="my_id" name="my_id" type="hidden" value="false" />')
      end

      it "returns a check tag set to true" do
        ct.should include('<input id="my_id" name="my_id" type="checkbox" value="true" />')
      end

    end

    context "check tag with check set to true" do
      let(:ct)            { check_tag("my_id", 'true') }

      it "returns a hidden tag set to false" do
        ct.should include('<input id="my_id" name="my_id" type="hidden" value="false" />')
      end

      it "returns a check tag set to true" do
        ct.should include('<input id="my_id" name="my_id" type="checkbox" value="true" />')
      end

    end

    context "check tag with check set to false" do
      let(:ct)            { check_tag("my_id", 'false') }

      it "returns a hidden tag set to false" do
        ct.should include('<input id="my_id" name="my_id" type="hidden" value="false" />')
      end

      it "returns a check tag set to false" do
        ct.should include('<input checked="checked" id="my_id" name="my_id" type="checkbox" value="false" />')
      end

    end

    context "check tag with uncheck set to false" do
      let(:ct)            { check_tag("my_id", nil, 'false') }

      it "returns a hidden tag set to false" do
        ct.should include('<input id="my_id" name="my_id" type="hidden" value="false" />')
      end

      it "returns a check tag set to true" do
        ct.should include('<input id="my_id" name="my_id" type="checkbox" value="true" />')
      end

    end

    context "check tag with defaulted set to true" do
      let(:ct)            { check_tag("my_id", 'true', 'false', 'true') }

      it "returns a hidden tag set to false" do
        ct.should include('<input id="my_id" name="my_id" type="hidden" value="false" />')
      end

      it "returns a check tag set to true" do
        ct.should include('<input checked="checked" id="my_id" name="my_id" type="checkbox" value="true" />')
      end

    end

  end
end
