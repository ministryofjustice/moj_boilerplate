module MojKickstart
  class Engine < ::Rails::Engine
    initializer 'moj_boilerplate.load_moj_boilerplate' do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/source"
    end
  end
end
