with_defaults :scope => 'meta.project.com.appcelerator.titanium.mobile source.js' do
  snippet 'Generate Scene Scaffold' do |s|
    s.trigger = 'gs'
    s.expansion =
"(function() {
\tvar platino = require('co.lanica.platino');

\tvar ${1:SceneName} = function(window, game) {
\t\tvar scene = platino.createScene();
  
\t\tvar onSceneActivated = function(e) {

\t\t\t// ---- create sprites, add listeners, etc. ----

\t\t\t${0:TM_SELECTED_TEXT}

\t\t};

\t\tvar onSceneDeactivated = function(e) {

\t\t\t// ---- remove sprites, listeners, etc. ----

\t\t};

\t\tscene.addEventListener('activated', onSceneActivated);
\t\tscene.addEventListener('deactivated', onSceneDeactivated);
\t\treturn scene;
\t};

\tmodule.exports = ${1:SceneName};
}).call(this);
"
  end

  # ---- BEGIN require() ... ----

  snippet 'Platino' do |s|
    s.trigger = 'rp'
    s.expansion = 'var platino = require(\'co.lanica.platino\');'
  end

  snippet 'Box2D (physics)' do |s|
    s.trigger = 'rbox2d'
    s.expansion = 'var box2d = require(\'co.lanica.box2djs\');'
  end

  snippet 'Chipmunk (physics)' do |s|
    s.trigger = 'rchipmunk'
    s.expansion = 'var chipmunk = require(\'co.lanica.chipmunkjs\');'
  end

  # ---- END require() ... ----

  # ---- BEGIN GameView ----
  
  snippet 'platino.createGameView' do |s|
    s.trigger = 'gv'
    s.expansion = 'var game = platino.createGameView();'
  end
  
  snippet 'game.startCurrentScene' do |s|
    s.trigger = 'scs'
    s.expansion = 'game.startCurrentScene();'
  end

  snippet 'game.start' do |s|
    s.trigger = 'gstart'
    s.expansion = 'game.start();'
  end

  snippet 'game.stop' do |s|
    s.trigger = 'gstop'
    s.expansion = 'game.stop();'
  end

  snippet 'game.pushScene' do |s|
    s.trigger = 'gpush'
    s.expansion = 'game.pushScene(${1:scene});'
  end

  snippet 'game.popScene' do |s|
    s.trigger = 'gpop'
    s.expansion = 'game.popScene();'
  end

  snippet 'game.replaceScene' do |s|
    s.trigger = 'greplace'
    s.expansion = 'game.replaceScene(${1:scene});'
  end

  snippet 'game.topScene' do |s|
    s.trigger = 'gtop'
    s.expansion = 'game.topScene();'
  end

  snippet 'game.addHUD' do |s|
    s.trigger = 'gaddhud'
    s.expansion = 'game.addHUD(${1:sprite});'
  end

  snippet 'game.removeHUD' do |s|
    s.trigger = 'gremovehud'
    s.expansion = 'game.removeHUD(${1:sprite});'
  end

  snippet 'game.color' do |s|
    s.trigger = 'gcolor'
    s.expansion = 'game.color(${1:red}, ${2:green}, ${3:blue});'
  end

  snippet 'game.uptime' do |s|
    s.trigger = 'ut'
    s.expansion = 'game.uptime();'
  end

  snippet 'game.loadTexture' do |s|
    s.trigger = 'gt'
    s.expansion = 'game.loadTexture(${1:textureName});'
  end

  snippet 'game.loadTextureWithTag' do |s|
    s.trigger = 'gttag'
    s.expansion = 'game.loadTextureWithTag(${1:textureName}, ${2:tagName});'
  end

  snippet 'game.unloadTexture' do |s|
    s.trigger = 'unloadt'
    s.expansion = 'game.unloadTexture(${1:textureName});'
  end

  snippet 'game.unloadTextureByTag' do |s|
    s.trigger = 'unloadtag'
    s.expansion = 'game.unloadTextureByTag(${1:tagName});'
  end

  snippet 'game.stop' do |s|
    s.trigger = 'gstop'
    s.expansion = 'game.stop();'
  end

  snippet 'game.moveCamera' do |s|
    s.trigger = 'movecam'
    s.expansion = 'game.moveCamera(${1:transform});'
  end

  # ---- END GameView ----

  # ---- BEGIN Scene ----

  snippet 'platino.createScene' do |s|
    s.trigger = 'cs'
    s.expansion = 'var scene = platino.createScene();'
  end

  snippet 'scene.add' do |s|
    s.trigger = 'sadd'
    s.expansion = 'scene.add(${1:sprite});'
  end

  snippet 'scene.remove' do |s|
    s.trigger = 'sremove'
    s.expansion = 'scene.remove(${1:sprite});'
  end

  snippet 'scene.color' do |s|
    s.trigger = 'scolor'
    s.expansion = 'scene.color(${1:red}, ${2:green}, ${3:blue});'
  end

  # ---- END Scene ----

  # ---- BEGIN Sprite ----

  # TODO

  # ---- END Sprite ----

  # ---- BEGIN SpriteSheet ----

  # TODO

  # ---- END SpriteSheet ----

  # ---- BEGIN MapSprite ----

  # TODO

  # ---- END MapSprite ----

  # ---- BEGIN TextSprite ----

  # TODO

  # ---- END TextSprite ----

  # ---- BEGIN Transform ----

  # TODO

  # ---- END Transform ----

  # ---- BEGIN Particles ----

  # TODO

  # ---- END Particles ----
  
end
