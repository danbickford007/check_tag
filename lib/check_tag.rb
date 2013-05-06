require "check_tag/version"

ActiveSupport.on_load(:action_view) do
  include CheckTag
end

module CheckTag
  
  def check_tag(id, check=nil, uncheck=nil, defaulted=nil)
    begin
      @id = id
      @check = check
      @uncheck = uncheck
      @defaulted = defaulted
      defaults
      string_now
      hidden_tag = hidden_field_tag(@id, @uncheck)
      return_objects = check_box_tag(@id, @check, (@defaulted == @check ? true : false))
      return hidden_tag + " " + return_objects
    rescue Exception => exc
      puts "CHECK TAG ERROR.........#{exc}"
    end  
  end
  
  def defaults
    if !@check
      @check = 'true'
    end
    if !@uncheck
      @uncheck = 'false'
    end  
    if !@defaulted
      @defaulted = @uncheck
    end  
  end
  
  def string_now
    @id = @id.to_s
    @check = @check.to_s
    @uncheck = @uncheck.to_s
    @defaulted = @defaulted.to_s
  end
  
end
