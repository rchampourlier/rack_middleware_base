require 'rack'

class RackMiddlewareBase

  def initialize(app, options = {})
    @app = app
    @options = options
  end
  
  def call(env)
    @env = env
    # Do your stuff
    @app.call @env
  end

  private
  
  def request
    Rack::Request.new @env
  end
end
