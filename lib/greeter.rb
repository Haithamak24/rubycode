require 'rack'
require 'erb'

class Greeter
  def call(env)
    request = Rack::Request.new(env)

    case request.path
    when '/'
      response_body = render('index.html.erb')
      [200, { 'content-type' => 'text/html' }, [response_body]] 
    when '/change'
      name = request.params['name']
      response_body = render_greeting(name)
      [200, { 'content-type' => 'text/html' }, [response_body]] 
    else
      not_found
    end
  end

  private

  def render(template)
    path = File.expand_path("../views/#{template}", __FILE__)
    template_content = File.read(path)
    ERB.new(template_content).result(binding)
  end

  def render_greeting(name)
    path = File.expand_path("../views/greeting.html.erb", __FILE__)
    template_content = File.read(path)
    ERB.new(template_content).result(binding)
  end

  def not_found
    [404, { 'content-type' => 'text/plain' }, ['Not Found']] 
  end
end
