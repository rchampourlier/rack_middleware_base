require 'spec_helper'

describe RackMiddlewareBase do
  let(:app) { ->(env) { [200, env, 'app'] } }
  
  let :middleware do
    RackMiddlewareBase.new(app)
  end

  it 'should be transparent' do
    code, env = middleware.call env_for 'http://test.com'
    code.should == 200
  end
  
  def env_for url, opts={}
    Rack::MockRequest.env_for(url, opts)
  end
end