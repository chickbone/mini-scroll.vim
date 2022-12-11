vim9script

if exists('g:loaded_miniscroll')
  finish
endif
g:loaded_miniscroll = 1

nmap <silent> <Plug>(mini-scroll-up)     <Cmd>call miniscroll#Smooth_scroll(-3, v:count1)<CR>
nmap <silent> <Plug>(mini-scroll-down)   <Cmd>call miniscroll#Smooth_scroll(3, v:count1)<CR>
vmap <silent> <Plug>(mini-scroll-up-v)   <Cmd>call miniscroll#Smooth_scroll(-3, v:count1)<CR>
vmap <silent> <Plug>(mini-scroll-down-v) <Cmd>call miniscroll#Smooth_scroll(3, v:count1)<CR>
