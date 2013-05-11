require "check_tag/version"

ActiveSupport.on_load(:action_view) do
  include CheckTag
end

module CheckTag
  def check_tag(id, check=true, uncheck=false, defaulted=false)
    "#{hidden_field_tag(id, uncheck)} #{check_box_tag(id, check, defaulted)}"
  end
end
