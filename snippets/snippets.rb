with_defaults :scope => 'meta.project.com.appcelerator.titanium.mobile source.js' do
  snippet 'New Scene from Template' do |s|
    s.trigger = 'scene'
    s.expansion =
"var platino = require('co.lanica.platino');

var ${1:SceneName} = function(window, game) {
\tvar scene = platino.createScene();
  
\tvar onSceneActivated = function(e) {

\t\t// ---- create sprites, add listeners, etc. ----

\t\t${0:TM_SELECTED_TEXT}

\t};

\tvar onSceneDeactivated = function(e) {

\t\t// ---- remove sprites, listeners, etc. ----

\t};

\t// called when user presses the Android hardware back button
\t// when this scene is the current scene
\tscene.backButtonHandler = function() {

\t\t// ---- your code here ----

\t};

\tscene.addEventListener('activated', onSceneActivated);
\tscene.addEventListener('deactivated', onSceneDeactivated);
\treturn scene;
};

module.exports = ${1:SceneName};
"
  end

  snippet 'New Module from Template' do |s|
    s.trigger = 'module'
    s.expansion = 
"var ${1:ModuleName} = (function() {

\t// Constructor
\tfunction ${1:ModuleName}() {

\t\t${0:TM_SELECTED_TEXT}

\t\treturn this;
\t};

\t${1:ModuleName}.prototype.sampleMethod = function() {
\t\tthis.var1 = 'xyz';
\t};

\treturn ${1:ModuleName};
}).call(this);

module.exports = ${1:ModuleName};
"
  end
  
end
