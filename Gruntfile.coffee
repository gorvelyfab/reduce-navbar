module.exports = (grunt) ->
    require('load-grunt-tasks')(grunt)

    grunt.initConfig
        coffee:
            compile:
                options:
                    bare: true
                    sourceMap: true
                    sourceMapDir: 'src/js/maps/'
                files:
                    'dist/js/reduce-navbar.js': 'src/js/reduce-navbar.coffee'

        cssmin:
            dist:
                files:
                    'dist/css/reduce-navbar.min.css': 'dist/css/reduce-navbar.css'

        postcss:
            options:
                map: true
                browsers: ['last 2 versions', 'ie 8', 'ie 9']
            dist:
                src: 'dist/css/reduce-navbar.css'

        sass:
            options:
                sourceMap: true
            dist:
                files:
                    'dist/css/reduce-navbar.css': 'src/css/reduce-navbar.scss'

        uglify:
            dist:
                options:
                    mangle: false
                    sourceMap: true
                    sourceMapName: 'src/js/maps/uglify.reduce-navbar.min.map'
                files:
                    'dist/js/reduce-navbar.min.js': ['dist/js/reduce-navbar.js']

        watch:
            options:
                spawn: false
            css:
                files: ['src/css/*.scss', 'src/css/**/*.scss']
                tasks: ['sass', 'postcss']
            scripts:
                files: ['src/js/*.coffee', 'src/js/**/*.coffee']
                tasks: ['coffee']

    grunt.registerTask 'default', ['watch']
    grunt.registerTask(
        'build',
        [
            'sass'
            'postcss'
            'cssmin'
            'coffee'
            'uglify'
        ]
    )
