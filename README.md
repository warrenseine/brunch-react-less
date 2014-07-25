Brunch with React and Less
==========================

A Brunch skeleton for cross-platform rapid development with React and Less. Just run `vagrant up` and edit the code.

# Features

* CoffeeScript, Less, React auto-compilation
* Auto-reload on save
* Out-of-the-box Vagrant support (with hacks for Windows)
* Forever support with logs so you don't wonder why your template doesn't rebuild
* Brunch for building
* Bower for front component management

# Installation

For an isolated environment:

* Install [Virtual Box](https://www.virtualbox.org/)
* Install [Vagrant](http://www.vagrantup.com/)
* Run `vagrant up` from a command line
* Open your browser at [http://localhost:3333](http://localhost:3333)

On your local host computer:

* `git clone https://github.com/warrenseine/brunch-react-less`
* `cd brunch-react-less`
* `npm install`
* `bower install`
* `npm start`
* `tail -f log/err.log` for error reporting
* Open your browser at [http://localhost:3333](http://localhost:3333)

# Contribute

`brunch-react-less` is MIT-licensed. Feel free to contribute.
