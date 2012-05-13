function fortune_vimtips#viewtips()
    let vimtips = system('fortune vimtips')

    new
    resize 3
    silent exec "edit $HOME/"."vimtips"
  " Avoid warning for editing the dummy file twice
    setl buftype=nofile noswapfile
    set bufhidden=hide
    setl nobuflisted

    silent exec append(0, 'Did you know ?')
    silent exec append(1, vimtips)

endfunction
