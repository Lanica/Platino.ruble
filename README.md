Platino SDK Ruble
====
By Lanica, Inc. Licensed under the MIT license.

Overview
----
Platino.ruble is a Titanium Studio add-on will help make it easier to develop apps with Platino by adding a Platino project template and snippets directly to the IDE.

### Features

**Platino Project Template** Go to `File > New > Mobile Project` and there will be a new *Platino* entry in the sidebar. This will generate a blank project and an empty starter scene to help you get up and running with a new Platino project quickly!

**Snippets** When editing a file, go to the `Command > Platino SDK` menu and you'll be presented with a few useful snippets. Currently, there are snippets for requiring the Platino and Box2D modules, as well as snippets for generating empty Scene and module Scaffolds.


How to install
----

0. Install Titanium Studio.
1. Download the [latest Platino.ruble release](https://github.com/Lanica/Platino.ruble/releases/)
2. Unzip to ~/Documents/Aptana Rubles (there should be a folder named Platino.ruble after you extract the zip).
3. Restart Titanium Studio.

### NOTE:

When starting a new Platino project, you'll still need to add the Platino module to your tiapp.xml or you'll get a build error. In Titanium Studio, double-click on the tiapp.xml file under your project, and add Platino to the 'Modules' section (on the far right).