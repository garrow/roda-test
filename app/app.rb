require "roda"

class App < Roda
  plugin :render

  plugin :default_headers,
         'Content-Type'              => 'text/html',
         'Content-Security-Policy'   => "default-src 'self'",
         'Strict-Transport-Security' => 'max-age=16070400;',
         'X-Frame-Options'           => 'deny',
         'X-Content-Type-Options'    => 'nosniff',
         'X-XSS-Protection'          => '1; mode=block'

  route do |r|
    render('home')
  end
end
