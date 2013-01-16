module NoAuth
  def authorize! *args
    true
  end
end

if defined? ActionController::Base
  ActionController::Base.class_eval do
    include NoAuth
  end
end
