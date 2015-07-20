module.exports = (grunt) ->
    require('load-grunt-tasks')(grunt)

    grunt.initConfig
        browserify:
            dist:
                files:
                    'js/reduce-navbar.js': ['js/reduce-navbar.js']
                options:
                    transform: ['coffeeify']
                    browserifyOptions:
                        debug: true

        coffee:
            compile:
                options:
                    bare: true
                    sourceMap: true
                    sourceMapDir: 'js/maps/'
                files:
                    'js/reduce-navbar.js': 'js/reduce-navbar.coffee'

        cssmin:
            dist:
                files:
                    'css/reduce-navbar.min.css': 'css/reduce-navbar.css'

        postcss:
            options:
                map: true
                browsers: ['last 2 versions', 'ie 8', 'ie 9']
            dist:
                src: 'css/reduce-navbar.css'

        sass:
            options:
                sourceMap: true
            dist:
                files:
                    'css/reduce-navbar.css': 'css/reduce-navbar.scss'

        uglify:
            dist:
                options:
                    mangle: false
                    sourceMap: true
                    sourceMapName: 'js/maps/uglify.reduce-navbar.min.map'
                files:
                    'js/reduce-navbar.min.js': ['js/reduce-navbar.js']

        watch:
            options:
                spawn: false
            css:
                files: ['css/*.scss', 'css/**/*.scss']
                tasks: ['sass', 'postcss']
            scripts:
                files: ['js/*.coffee', 'js/**/*.coffee']
                tasks: ['coffee', 'browserify']

    grunt.registerTask 'default', ['watch']
    grunt.registerTask(
        'build',
        [
            'sass'
            'postcss'
            'cssmin'
            'coffee'
            'browserify'
            'uglify'
        ]
    )
