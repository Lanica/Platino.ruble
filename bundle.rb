require 'ruble'

bundle 'Platino SDK' do |bundle|
  bundle.author = 'Lanica, Inc.'
  bundle.copyright = "Copyright 2013 Lanica, Inc."
  bundle.description = t(:bundle_description)
  bundle.display_name = t(:bundle_name)
  bundle.repository = "git://github.com/Lanica/Platino.ruble.git"

  bundle.menu t(:bundle_name) do |main_menu|
    main_menu.menu 'require() ...' do |require_menu|
      require_menu.command 'Platino'
      require_menu.command 'Box2D (physics)'
    end

    main_menu.command 'New Scene from Template'
    main_menu.command 'New Module from Template'
  end

  project_template t(:platino_application) do |t|
    t.type = :titanium_mobile
    t.location = "staging/Platino.zip"
    t.description = t(:platino_application_desc)
    t.tags = ['Lanica Platino']
    t.icon = "staging/Platino.png" 
  end
  
end
