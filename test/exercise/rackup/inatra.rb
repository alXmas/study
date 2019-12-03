module Inatra
  class << self
    def routes
    end

    def call(env)
      if env['PATH_INFO'] == '/hello'
        ['200', {'Content-Type' => 'text/plain'}, ['Hello World']]
      else
        [
          '404',
          {"Content-Type" => 'text/plain', "Content-Length" => '13'},
          ["404 Not Found"]
        ]
      end
    end
  end
end


