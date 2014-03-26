# Rack PathInfo Fix
#
# This class is a Rack Middleware that fixes up
# PATH_INFO to be correct for Rack based apps.
class RackPathInfoFix
  def initialize(app)
    @app = app
  end

  def call(env)
    pi = env['PATH_INFO']
    sn = env['SCRIPT_NAME']

    if pi != sn
      env['PATH_INFO'] = File.join(sn, pi)
    end

    @app.call env
  end
end

