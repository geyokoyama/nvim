function strip_trailing_whitespaces#StripTrailingWhitespaces()
  let _save_pos=getpos(".") |
  let _s=@/ |
  %s/\s\+$//e |
  let @/=_s |
  nohl |
  unlet _s |
  call setpos('.', _save_pos) |
  unlet _save_pos
endfunction

