if (exists('g:loaded_npm') && g:loaded_npm) || v:version < 700 || &cp
  finish
endif
let g:loaded_npm = 1

function! s:Npm(bang, args)
  let cmd = 'npm ' . a:args
  execute ':!' . cmd
endfunction

command! -bar -bang -nargs=* Npm call s:Npm(<bang>0,<q-args>)

command Nreset ! rm -rf node_modules && npm cache clean && npm i
command Ntest ! npm test