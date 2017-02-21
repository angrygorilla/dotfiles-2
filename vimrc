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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jmcantrell/vim-virtualenv'
Plug 'luochen1990/rainbow'
Plug 'nvie/vim-flake8'
Plug 'lervag/vimtex'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'glench/vim-jinja2-syntax'

" plugins

call plug#end()

" vim colors solarized settings
syntax enable
set background=dark
colorscheme solarized

" tabs keybindings
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-left> :tabp<cr>
map <C-right> :tabn<cr>

" vim-ansible-yaml
let g:ansible_options = {'ignore_blank_lines': 0}
let g:ansible_options = {'documentation_mapping': '<C-K>'} "ctrl-k for docs

" vim-arline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'simple'
set laststatus=2

" rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
