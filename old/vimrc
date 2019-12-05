" /etc/vim/vimrc ou ~/.vimrc
" Fichier de configuration de Vim
" Formation Debian GNU/Linux par Alexis de Lattre
" http://formation-debian.via.ecp.fr/

" ':help options.txt' ou ':help nom_du_paramètre' dans Vim
" pour avoir de l'aide sur les paramètres de ce fichier de configuration

set novisualbell

execute pathogen#infect()



" Active la coloration syntaxique
syntax on
" Définit le jeu de couleurs utilisé
" Les jeux de couleur disponibles sont les fichiers avec l'extension .vim
" dans le répertoire /usr/share/vim/vimcurrent/colors/
colorscheme hemisu
set background=light

set autoread

" Affiche la position du curseur 'ligne,colonne'
set ruler
" Affiche une barre de status en bas de l'écran
set laststatus=2
" Contenu de la barre de status
set statusline=%<%f%h%m%r%=%l,%c\ %P

" Largeur maxi du texte inséré
" '72' permet de wrapper automatiquement à 72 caractères
" '0' désactive la fonction
set textwidth=0

" Wrappe à 72 caractères avec la touche '#'
map # gwap
" Wrappe et justifie à 72 caractères avec la touche '@'
map @ {v}! par 72j

" Ne pas assurer la compatibilité avec l'ancien Vi
set nocompatible
" Nombre de colonnes (inutile, voire gênant)
"set columns=80
" Nombre de commandes dans l'historique
set history=50
" Options du fichier ~/.viminfo
set viminfo='20,\"50
" Active la touche Backspace
set backspace=2
" Autorise le passage d'une ligne à l'autre avec les flèches gauche et droite
set whichwrap=<,>,[,]
" Garde toujours une ligne visible à l'écran au dessus du curseur
set scrolloff=1
" Affiche les commandes dans la barre de status
set showcmd
" Affiche la paire de parenthèses
set showmatch
" Essaye de garder le curseur dans la même colonne quand on change de ligne
set nostartofline
" Option de la complétion automatique
set wildmode=list:full
" Par défaut, ne garde pas l'indentation de la ligne précédente
" quand on commence une nouvelle ligne
"set noautoindent
" Options d'indentation pour un fichier C
set cinoptions=(0

" xterm-debian est un terminal couleur
if &term =~ "xterm-debian" || &term =~ "xterm-xfree86"
    set t_Co=16
    set t_Sf=[3%dm
    set t_Sb=[4%dm
endif

" Quand on fait de la programmation, on veut qu'il n'y ait jamais de
" vraies tabulations insérées mais seulement des espaces
set expandtab
set tabstop=4

" Décommentez les 2 lignes suivantes si vous voulez avoir les tabulations et
" les espaces marqués en caractères bleus
"set list
"set listchars=tab:>-,trail:-
" Les recherches ne sont pas 'case sensitives'
set ignorecase

" Le découpage des folders se base sur l'indentation
" set foldmethod=indent
" 12 niveaux d'indentation par défaut pour les folders
" set foldlevel=12

" Recherches incrémentalees : rechercher au fur et à mesure qu'on
" tape le motif de recherche
set incsearch
" Mettre en surbrillance le mot cherché
"set hlsearch

" Décommentez la ligne suivante si vous voulez afficher les numéros de ligne
set number

" set mouse=a
set autoindent
set tags+=~/.vim/tags/tags
set nocp
filetype plugin on
set makeprg=make
set ruler
set is
set et!
set cul

set t_vb=



"Correction orthographique

"augroup filetypedetect
"au BufNewFile,BufRead *.tex setlocal spell spelllang=fr
"augroup END

" Toggle option 'spell' : Active/désactive le textspell avec F10

filetype plugin indent on

function! ToggleSpell()
        if &spell
                set nospell
        else
                set spell
        endif
endfunction

noremap <F10> : call ToggleSpell()<cr>
inoremap <F10> <Esc> : call ToggleSpell()<cr>a

if &term =~ "xterm"
		let &t_SI = "\<Esc>]50;CursorShape=1\x7"
		let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


"Auto indent
map <C-f> gg=G
nmap <C-f> gg=G
imap <C-f> <Esc>gg=Gi

imap fd <Esc>
vmap fd <Esc>

map <F9> :make<CR>
nmap <F9> :make<CR>
imap <F9> <Esc> :make<CR>i

map <C-x> :q!<CR>
nmap <C-x> :q!<CR>
imap <C-x> <Esc> :q!<CR>

map <C-q> :q<CR>
nmap <C-q> :q<CR>
imap <C-q> <Esc> :q<CR>

map <C-s> :w<CR>
nmap <C-s> :w<CR>
imap <C-s> <Esc> :w<CR>i

map <C-Up> :new<CR>
nmap <C-Up> :new<CR>
imap <C-Up> <Esc> :new<CR>

map <C-Right> :bnext<CR>
nmap <C-Right> :bnext<CR>
imap <C-Right> <Esc> :bnext<CR>

map <C-Left> :bprevious<CR>
nmap <C-Left> :bprevious<CR>
imap <C-Left> <Esc> :bprevious<CR>

"Ocaml Configuration
au BufEnter *.ml setf ocaml
au BufEnter *.mli setf ocaml
au FileType ocaml call FT_ocaml()

function FT_ocaml()
    set textwidth=80
    set colorcolumn=80
    set shiftwidth=2
    set tabstop=2
    " ocp-indent with ocp-indent-vim
    let opamshare=system("opam config var share | tr -d '\n'")
    execute "autocmd FileType ocaml source".opamshare."/vim/syntax/ocp-indent.vim"
    filetype indent on
    filetype plugin indent on
endfunction




