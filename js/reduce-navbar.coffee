$(document).ready ->
    $('#reduce--left').on 'click', (e) ->
        e.preventDefault()
        $('body').toggleClass 'with-reduce-sidebar--left'

    $('#reduce--right').on 'click', (e) ->
        e.preventDefault()
        $('body').toggleClass 'with-reduce-sidebar--right'

    $('#reduce__cache').on 'click', ->
        $('body')
            .removeClass 'with-reduce-sidebar--left'
            .removeClass 'with-reduce-sidebar--right'
