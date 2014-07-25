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

1. Install [Virtual Box](https://www.virtualbox.org/)
2. Install [Vagrant](http://www.vagrantup.com/)
3. Run `vagrant up` from a command line
4. Open your browser at [http://localhost:3333](http://localhost:3333)

On your local host computer:

1. `git clone https://github.com/warrenseine/brunch-react-less`
2. `cd brunch-react-less`
3. `npm install`
4. `bower install`
5. `npm start`
6. `tail -f log/err.log` for error reporting
7. Open your browser at [http://localhost:3333](http://localhost:3333)

# Contribute

`brunch-react-less` is MIT-licensed. Feel free to contribute.
