let s:initialized_client = 0
let s:script_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

if !exists('http_client_bind_hotkey')
  let g:http_client_bind_hotkey = 1
endif

if !exists('http_client_json_ft')
  let g:http_client_json_ft = 'javascript'
endif

if !exists('http_client_json_escape_utf')
  let g:http_client_json_escape_utf = 1
endif

if !exists('http_client_result_vsplit')
  let g:http_client_result_vsplit = 1
endif

if !exists('http_client_focus_output_window')
  let g:http_client_focus_output_window = 1
endif

if !exists('http_client_verify_ssl')
  let g:http_client_verify_ssl = 1
endif

if !exists('http_client_preserve_responses')
  let g:http_client_preserve_responses = 0
endif

function! s:DoHTTPRequest()
  if has('python')
    command! -nargs=1 Python python <args>
    command! -nargs=1 Pyfile pyfile <args>
  elseif has('python3')
    command! -nargs=1 Python python3 <args>
    command! -nargs=1 Pyfile py3file <args>
  else
    echo 'Error: this plugin requires vim compiled with python support.'
    finish
  endif

  if !s:initialized_client
    let s:initialized_client = 1
    execute 'Pyfile ' . s:script_path . '/http_client.py'
  endif

  Python do_request_from_buffer()
endfunction

command! -nargs=0 HTTPClientDoRequest call <SID>DoHTTPRequest()

if g:http_client_bind_hotkey
  silent! nnoremap <unique> <Leader>tt :HTTPClientDoRequest<cr>
endif
