require 'rubygems'
require 'sinatra'
require 'mcollective'

class Client
  include MCollective::RPC

  def initialize(agent, opts={})
    @agent = agent
    @opts = MCollective::Util.default_options.merge(opts)
  end

  def method_missing(action, args={})
    @mc = rpcclient(@agent, :options => @opts)
    @results = @mc.send(action, args)
    @results.collect {|r|r.results}
  end
end

class App < Sinatra::Base
  get '/:agent/:action' do
    c = Client.new(params[:agent])
    result = c.send(params[:action])
    result.to_json
  end
end
