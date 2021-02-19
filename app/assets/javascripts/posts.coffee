# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# openmodal = document.querySelectorAll('.modal-open')

# toggleModal = ->
#   body = document.querySelector('body')
#   modal = document.querySelector('.modal')
#   modal.classList.toggle 'opacity-0'
#   modal.classList.toggle 'pointer-events-none'
#   body.classList.toggle 'modal-active'
#   return

# i = 0
# while i < openmodal.length
#   openmodal[i].addEventListener 'click', (event) ->
#     event.preventDefault()
#     toggleModal()
#     return
#   i++
# overlay = document.querySelector('.modal-overlay')
# overlay.addEventListener 'click', toggleModal
# closemodal = document.querySelectorAll('.modal-close')
# i = 0
# while i < closemodal.length
#   closemodal[i].addEventListener 'click', toggleModal
#   i++

# document.onkeydown = (evt) ->
#   evt = evt or window.event
#   isEscape = false
#   if 'key' of evt
#     isEscape = evt.key == 'Escape' or evt.key == 'Esc'
#   else
#     isEscape = evt.keyCode == 27
#   if isEscape and document.body.classList.contains('modal-active')
#     toggleModal()
#   return
