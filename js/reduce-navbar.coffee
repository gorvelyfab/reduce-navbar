$(document).ready ->
    $reduceMenuStandard = $('#reduce__menu--standard')
    $body = $('body')

    $('#active-menu-standard').on 'click', (e) ->
        e.preventDefault()
        e.stopPropagation()
        $reduceMenuStandard.toggleClass 'is-visible'


    $('#reduce--left').on 'click', (e) ->
        e.preventDefault()
        $body.toggleClass 'with-reduce-sidebar--left'

    $('#reduce--right').on 'click', (e) ->
        e.preventDefault()
        $body.toggleClass 'with-reduce-sidebar--right'

    $('#reduce__cache').on 'click', ->
        $body
            .removeClass 'with-reduce-sidebar--left'
            .removeClass 'with-reduce-sidebar--right'

    $body.on 'click', (e) ->
        $reduceMenuStandard.removeClass 'is-visible'

    $reduceMenuStandard.on 'click', (e) ->
        e.stopPropagation()