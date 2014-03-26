# Rack PathInfo Fix Version 0.0.1
# 
# This class is a Rack Middleware that fixes up
# PATH_INFO to be correct for Rack based apps.
class RackPathInfoFix
  def initialize(app)
    @app = app
  end

  def call(env)
    env['PATH_INFO'] = File.join(env['SCRIPT_NAME'], env['PATH_INFO'])

    @app.call env
  end
end

