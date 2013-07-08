require 'ruble'

bundle 'Platino SDK' do |bundle|
  bundle.author = 'Lanica, Inc.'
  bundle.copyright = "Copyright 2013 Lanica, Inc."
  bundle.description = t(:bundle_description)
  bundle.display_name = t(:bundle_name)
  bundle.repository = "git://github.com/Lanica/Platino.ruble.git"

  bundle.menu t(:bundle_name) do |main_menu|
    main_menu.command 'Generate Scene Scaffold'
    main_menu.menu 'require() ...' do |require_menu|
      require_menu.command 'Platino'
      require_menu.command 'Box2D (physics)'
    end
    main_menu.menu 'API Snippets' do |api_menu|
      api_menu.menu 'GameView' do |m|
        m.command 'platino.createGameView'
        m.command 'game.startCurrentScene'
        m.command 'game.start'
        m.command 'game.stop'
        m.command 'game.pushScene'
        m.command 'game.popScene'
        m.command 'game.replaceScene'
        m.command 'game.topScene'
        m.command 'game.addHUD'
        m.command 'game.removeHUD'
        m.command 'game.color'
        m.command 'game.uptime'
        m.command 'game.loadTexture'
        m.command 'game.loadTextureWithTag'
        m.command 'game.unloadTexture'
        m.command 'game.unloadTextureByTag'
        m.command 'game.moveCamera'
      end
      api_menu.menu 'Scene' do |m|
        m.command 'platino.createScene'
        m.command 'scene.add'
        m.command 'scene.remove'
        m.command 'scene.color'
      end
      api_menu.menu 'Sprite' do |m|
        m.command 'platino.createSprite'
        m.command 'sprite.show'
        m.command 'sprite.hide'
        m.command 'sprite.move'
        m.command 'sprite.rotate'
        m.command 'sprite.rotateFrom'
        m.command 'sprite.rotateX'
        m.command 'sprite.rotateY'
        m.command 'sprite.rotateZ'
        m.command 'sprite.rotateFromAxis'
        m.command 'sprite.scale'
        m.command 'sprite.scaleBy'
        m.command 'sprite.scaleFromCenter'
        m.command 'sprite.color'
        m.command 'sprite.addTransformChild'
        m.command 'sprite.addTransformChildWithRelativePosition'
        m.command 'sprite.removeTransformChild'
        m.command 'sprite.contains'
        m.command 'sprite.collidesWith'
        m.command 'sprite.blendFunc'
        m.command 'sprite.dispose'
        m.command 'sprite.transform'
        m.command 'sprite.clearTransforms'
        m.command 'sprite.loadTextureByBlob'
        m.command 'sprite.loadTextureByBlobWithName'
      end
      api_menu.menu 'SpriteSheet' do |m|
        m.command 'platino.createSpriteSheet'
        m.command 'spritesheet.animate(frames...)'
        m.command 'spritesheet.animate(start...)'
        m.command 'spritesheet.stop'
        m.command 'spritesheet.pause'
        m.command 'spritesheet.pauseAt'
      end
      api_menu.menu 'MapSprite' do |m|
        m.command 'platino.createMapSprite'
        m.command 'mapsprite.getTile'
        m.command 'mapsprite.updateTile'
        m.command 'mapsprite.removeTile'
      end
      api_menu.menu 'TextSprite' do |m|
        m.command 'platino.createTextSprite'
        m.command 'textsprite.sizeWithText'
      end
      api_menu.menu 'Transform' do |m|
        m.command 'platino.createTransform'
        m.command 'transform.move'
        m.command 'transform.color'
        m.command 'transform.hide'
        m.command 'transform.show'
        m.command 'transform.rotate'
        m.command 'transform.rotateFrom'
        m.command 'transform.scale'
      end
      api_menu.menu 'Particles' do |m|
        m.command 'platino.createParticles'
        m.command 'particle.move'
        m.command 'particle.dispose'
      end
    end
  end

  project_template t(:platino_application) do |t|
    t.type = :titanium_mobile
    t.location = "staging/Platino.zip"
    t.description = t(:platino_application_desc)
    t.tags = ['Lanica Platino']
    t.icon = "staging/Platino.png" 
  end
  
end
