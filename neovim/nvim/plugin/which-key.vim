if PlugLoaded("vim-which-key")
    " Map leader to which_key
    nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
    vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

    " Create map to add keys to
    " let g:which_key_map = {}
    let g:which_key_map = get(g:, 'which_key_map', {})
    " Define a separator
    let g:which_key_sep = '→'
    " set timeoutlen=100


    " Not a fan of floating windows for this
    let g:which_key_use_floating_win = 0

    " Change the colors if you want
    highlight default link WhichKey          Operator
    highlight default link WhichKeySeperator DiffAdded
    highlight default link WhichKeyGroup     Identifier
    highlight default link WhichKeyDesc      Function

    " Hide status line
    autocmd! FileType which_key
    autocmd  FileType which_key set laststatus=0 noshowmode noruler
      \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

    if PlugLoaded("nerdcommenter") | let g:which_key_map['c'] = NerdCommenterWhichKey() | endif
    if PlugLoaded("telescope.nvim")
        let g:which_key_map['f'] = TelescopeWhichKeyFile() 
        let g:which_key_map['g'] = TelescopeWhichKeyGit() 
    endif

    " Set the leasder Key
    call which_key#register('<Space>', "g:which_key_map")

endif
