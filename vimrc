" autocommand, whenever save file ~/.vimrc, it gets automatically sourced
:au! BufWritePost $MYVIMRC source $MYVIMRC

"====[ Make tabs, trailing whitespace, and non-breaking spaces visible]======
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

call plug#begin('~/.vim/plugged')

" plugins
Plug 'tpope/vim-fugitive'
Plug 'chase/vim-ansible-yaml'
Plug 'wakatime/vim-wakatime'
Plug 'altercation/vim-colors-solarized'
Plug 'ConradIrwin/vim-bracketed-paste'
" plugins

call plug#end()

" vim colors solarized settings
syntax enable
set background=dark
colorscheme solarized

" tabs keybindings
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

" vim-ansible-yaml
let g:ansible_options = {'ignore_blank_lines': 0}
let g:ansible_options = {'documentation_mapping': '<C-K>'} "ctrl-k for docs
