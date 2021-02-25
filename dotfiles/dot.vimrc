" Integrate with MacOS clipboard -- https://stackoverflow.com/a/680271
set clipboard=unnamed

" Enable trackpad
set mouse=a

" Line numbers
set number

" Syntax highligting
syntax on

function! SweType()
  set keymap=swe-gb
  set spelllang=sv
endfunction

nnoremap <Leader>s :<C-U>call SweType()<CR>

"{{{2 Switch to English
function! EngType()
  set keymap=
  set spelllang=en_gb
endfunction

nnoremap <Leader>e :<C-U>call EngType()<CR>
