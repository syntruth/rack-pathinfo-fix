# Rack PathInfo Fix Middleware

This Rack middleware is very simply and only does one thing: fixes the
`PATH_INFO` environment variable. Apache and `mod_python` messes up the
path info, by stripping the first path segment from it and setting the
`SCRIPT_NAME` to that segment. This isn't *wrong* behaviour, but Rack
applications expect the segement there when matching up mapped routes.

# Usage

In your config.ru

    require 'rack_pathinfo_fix'
    require 'app.rb' # whatever your app file is.

    use RackPathInfoFix

    run App

This also fixes things if you have to map other handlers:

    use RackPathInfoFix

    map '/assets' do
      run AssetsHandler
    end

    map '/'
      run App
    end

This README is longer than the actual middleware class. :)

