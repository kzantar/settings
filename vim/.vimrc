set nocompatible

"#### kzantar settings ####

" размеры окна
" set lines=30
" set columns=80 

set langmap=ёйцукенгшщзхъфывапролджэячсмить;`qwertyuiop[]asdfghjkl\;'zxcvbnm,ЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬ;QWERTYUIOP{}ASDFGHJKL\:\"ZXCVBNM

" настраиваю для работы с русскими словами (чтобы w, b, * понимали
" русские слова)
set iskeyword=@,48-57,_,192-255

" colorscheme rdark

" Копи/паст по Ctrl+C/Ctrl+V
vmap <C-C> "+yi
imap <C-V> <Space><ESC>"+gPA

"Настройка Omni Completetion
set complete=.,k,b,t
set completeopt=longest,menu 

"Настройки табов для Python, согласно рекоммендациям
set tabstop=4
" Размер сдвига при нажатии на клавиши << и >>
set shiftwidth=4
set smarttab
"Ставим табы пробелами
set expandtab
"4 пробела в табе
set softtabstop=4 

"Автоотступ
set autoindent

" Включаем 'умную' автоматическую расстановку отступов
set smartindent

"Удобное поведение backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]

" Включаем нумерацию строк
set nu

"Переносим на другую строчку, разрываем строки
set wrap
set linebreak

"Вырубаем .swp и ~ (резервные) файлы
set nobackup
set nowritebackup
set noswapfile

set encoding=utf-8
set termencoding=utf-8

set fileencodings=utf-8,cp1251,cp866,koi8-r
set fileformats=unix,dos,mac


set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P
set laststatus=2

" Убирает левый скролбар
set guioptions-=L
" #### Горячие клавиши ####
" F3 - открыть окно NERDTree
nmap <F3> :NERDTreeToggle<cr>
imap <F3> <esc>:NERDTreeToggle<cr>i

" #### для работы плагина Tags ####
"let Tlist_Ctags_Cmd='"C:\Program Files\Vim\progs\ctags\ctags.exe"'
"Ctrl-T - открыть окно ctags
" nmap <C-t> :TlistToggle<cr>
" imap <C-t> <esc>:TlistToggle<cr>i 
" #### end ####

" Включаем подсветку выражения, которое ищется в тексте
set hlsearch
" При поиске перескакивать на найденный текст в процессе набора строки
set incsearch
" Останавливать поиск при достижении конца файла
set nowrapscan
" Игнорировать регистр букв при поиске
set ignorecase

"По <F2> сохранение сделанных изменений:
imap <F2> <Esc>:w<CR>
map <F2> <Esc>:w<CR>

" По <F4> открывается новая вкладка (tab) и выводится список каталогов и файлов текущего каталога. Клавишами управления курсором можно выбрать каталог или файл. Нажатие <Enter> на каталог отобразит его содержимое в том же режиме (можно путешествовать по каталогам), а нажатие <Enter> на файле - откроет его в этой же вкладке. Работает быстрый поиск-перемещение по "/".
imap <F4> <Esc>:browse tabnew<CR> 
map <F4> <Esc>:browse tabnew<CR>

" По <F5> позволяет переключать вкладки справа-налево, по-порядку, отображая открытые в них файлы.
imap <F5> <Esc> :bprev <CR>i
map <F5> :bprev <CR>

" По <F6> позволяет переключать вкладки слева-направо, по-порядку, отображая открытые в них файлы.
imap <F6> <Esc> :bnext <CR>i
map <F6> :bnext <CR>

" Делает слово  тегом
"nmap <F3> byei<<ESC>ea></<C-R>0><ESC>

" Более привычные Page Up/Down, когда курсор остаётся в той же строке,
" а не переносится вверх/вниз экрана, как при стандартном PgUp/PgDown.
" Поскольку по умолчанию прокрутка по C-U/D происходит на полэкрана,
" привязка делается к двойному нажатию этих комбинаций.
nmap <PageUp> <C-U><C-U>
imap <PageUp> <C-O><C-U><C-O><C-U>
nmap <PageDown> <C-D><C-D>
imap <PageDown> <C-O><C-D><C-O><C-D>
