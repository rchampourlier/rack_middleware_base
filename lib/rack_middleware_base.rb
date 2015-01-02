require 'rack'

class RackMiddlewareBase

  def initialize(app, options = {})
    @app = app
    @options = options
  end

  def call(env)
    @env = env

    # Do your stuff
    @env['rack_middleware_base'] = 'Did it!'

    @app.call @env
  end

  private

  def request
    Rack::Request.new @env
  end
end
