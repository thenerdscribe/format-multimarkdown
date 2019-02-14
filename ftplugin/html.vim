function! CleanMultiMarkdown()
  g/<figure>/norm dst
  g/<figcaption>/norm dd
  g/<p>/norm dst
  %s/^\n\n/\r/g
  norm ggdd
  norm gg=G
endfunction

silent nnoremap <leader>h :call CleanMultiMarkdown()<CR>
