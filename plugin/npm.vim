function! s:Npm(bang, args)
  let cmd = 'npm ' . a:args
  execute ':!' . cmd
endfunction

command! -bar -bang -nargs=* Npm call s:Npm(<bang>0,<q-args>)

command Nreset ! rm -rf node_modules && npm cache clean && npm i
command Ntest ! npm test