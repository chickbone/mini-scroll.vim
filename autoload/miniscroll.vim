vim9script

# smooth scroll

def Move(diff: number, timer: number)
  var length = abs(diff)
  if diff == 0
    return
  elseif diff > 0
    execute $"normal! {length}\<C-e>{length}j"
  else
    execute $"normal! {length}\<C-y>{length}k"
  endif
enddef

export def Smooth_scroll(speed: number)
  const stop_time = get(g:, 'stop_time', 10)
  var smooth_scroll_timer = []
  var working_timer = get(smooth_scroll_timer, 0)
  var rep = &scroll / abs(speed)
  if !empty(timer_info(working_timer))
    timer_stop(working_timer)
  endif
  if (speed > 0 && line('$') == line('w$')) || (speed < 0 && line('w0') == 1)
    return
  endif
  smooth_scroll_timer -> add(timer_start(stop_time, (id) => Move(speed, id), {repeat: rep}))
enddef

