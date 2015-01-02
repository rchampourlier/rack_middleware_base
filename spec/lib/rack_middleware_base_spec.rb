require 'spec_helper'

describe RackMiddlewareBase do
  let(:app) { ->(env) { [200, env, 'app'] } }

  let :middleware do
    RackMiddlewareBase.new(app)
  end

  it 'should be transparent' do
    code, _env = middleware.call env_for('http://test.com')
    expect(code).to eq(200)
  end

  it 'should had "rack_middleware_base" value to env' do
    _code, env = middleware.call env_for('http://test.com')
    expect(env['rack_middleware_base']).to eq('Did it!')
  end

  def env_for url, opts={}
    Rack::MockRequest.env_for(url, opts)
  end
end
