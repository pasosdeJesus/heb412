class ApplicationController < Sip::ApplicationController

  protect_from_forgery with: :exception
  helper Sip::Engine.helpers

end

