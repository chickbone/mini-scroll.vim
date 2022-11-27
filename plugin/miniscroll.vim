vim9script

if exists('g:loaded_miniscroll')
  finish
endif
g:loaded_miniscroll = 1

nmap <silent> <Plug>(mini-scroll-up)     <cmd>call miniscroll#Smooth_scroll(-3)<CR>
nmap <silent> <Plug>(mini-scroll-down)   <cmd>call miniscroll#Smooth_scroll(3)<CR>
vmap <silent> <Plug>(mini-scroll-up-v)   <cmd>call miniscroll#Smooth_scroll(-3)<CR>
vmap <silent> <Plug>(mini-scroll-down-v) <cmd>call miniscroll#Smooth_scroll(3)<CR>
