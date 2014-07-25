class brunch {

    $deps = [
        "git",
        "nodejs",
        "npm"
    ]

    package { $deps:
        ensure => "present",
        require => Exec["apt-get-update"]
    }

    Exec {
        user => "root",
        cwd => "/vagrant",
        environment => ["PWD=/vagrant", "HOME=/home/vagrant"],
        logoutput => on_failure,
        path => [
            "/bin/",
            "/sbin/",
            "/usr/bin/",
            "/usr/sbin/",
            "/vagrant/node_modules/.bin/"
        ],
        timeout => 0
    }

    exec { "apt-get-update":
        command => "apt-get update",
        provider => "shell"
    }

    file { "/usr/bin/node":
        ensure => "link",
        target => "/usr/bin/nodejs",
        require => Package["nodejs"]
    }

    file { "/vagrant/node_modules":
        ensure => "link",
        target => "/tmp/node_modules",
        require => File["/tmp/node_modules"]
    }

    file { "/tmp/node_modules":
        ensure => "directory",
        force => true
    }

    file { "/vagrant/bower_components":
        ensure => "link",
        force => true,
        target => "/tmp/bower_components",
        require => File["/tmp/bower_components"]
    }

    file { "/tmp/bower_components":
        ensure => "directory",
        force => true
    }

    exec { "npm-install":
        command => "npm install",
        provider => "shell",
        require => [
            Package["npm"],
            File["/usr/bin/node"],
            File["/vagrant/node_modules"]
        ]
    }

    exec { "bower-install":
        command => "bower install --allow-root",
        provider => "shell",
        require => [
            Exec["npm-install"],
            File["/vagrant/bower_components"]
        ]
    }

    exec { "npm-start":
        command => "npm start",
        provider => "shell",
        logoutput => true,
        require => [
            Exec["npm-install"],
            Exec["bower-install"]
        ]
    }
}

include brunch
