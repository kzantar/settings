set nocompatible

"#### kzantar settings ####

" Включаем мышку даже в текстовом режиме
" (очень удобно при копировании из терминала, т. к. без этой опции,
" например, символы табуляции раскладываются в кучу пробелов).
set mouse=a

" размеры окна
set lines=30
set columns=80 

set langmap=ёйцукенгшщзхъфывапролджэячсмить;`qwertyuiop[]asdfghjkl\;'zxcvbnm,ЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬ;QWERTYUIOP{}ASDFGHJKL\:\"ZXCVBNM

" настраиваю для работы с русскими словами (чтобы w, b, * понимали
" русские слова)
set iskeyword=@,48-57,_,192-255

"Автоматическое переключение рабочей папки
set autochdir

set background=dark
colorscheme solarized


"Включаем распознавание типов файлов и типо-специфичные плагины:
filetype on
filetype plugin on

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

" Сворачивание по отступам
set fdm=manual 
set foldlevelstart=1

" Автоматическое открытие сверток при заходе в них
set foldopen=all 

" Включаем нумерацию строк
set nu

"Включить подсветку синтаксиса
syntax on

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

" Меню Encoding -->
" Выбор кодировки, в которой читать файл -->
    set wildmenu
    set wcm=<Tab>
    menu Encoding.Read.utf-8<Tab><F7> :e ++enc=utf8 <CR>
    menu Encoding.Read.windows-1251<Tab><F7> :e ++enc=cp1251<CR>
    menu Encoding.Read.koi8-r<Tab><F7> :e ++enc=koi8-r<CR>
    menu Encoding.Read.cp866<Tab><F7> :e ++enc=cp866<CR>
    map <F7> :emenu Encoding.Read.<TAB>
" Выбор кодировки, в которой читать файл <--

" Выбор кодировки, в которой сохранять файл -->
    set wildmenu
    set wcm=<Tab>
    menu Encoding.Write.utf-8<Tab><S-F7> :set fenc=utf8 <CR>
    menu Encoding.Write.windows-1251<Tab><S-F7> :set fenc=cp1251<CR>
    menu Encoding.Write.koi8-r<Tab><S-F7> :set fenc=koi8-r<CR>
    menu Encoding.Write.cp866<Tab><S-F7> :set fenc=cp866<CR>
    map <S-F7> :emenu Encoding.Write.<TAB>
" Выбор кодировки, в которой сохранять файл <--

" Выбор формата концов строк (dos - <CR><NL>, unix - <NL>, mac - <CR>) -->
    set wildmenu
    set wcm=<Tab>
    menu Encoding.End_line_format.unix<Tab><C-F7> :set fileformat=unix<CR>
    menu Encoding.End_line_format.dos<Tab><C-F7> :set fileformat=dos<CR>
    menu Encoding.End_line_format.mac<Tab><C-F7> :set fileformat=mac<CR>
    map <C-F7> :emenu Encoding.End_line_format.<TAB>
" Выбор формата концов строк (dos - <CR><NL>, unix - <NL>, mac - <CR>) <--
" Меню Encoding <--

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

" #### Настройка TagBar ####
" Ctrl-T - открыть окно TagBar
nmap <C-t> :TagbarToggle<cr>
imap <C-t> <esc>:TagbarToggle<cr>i

let g:tagbar_left = 1
let g:tagbar_width = 30
let g:tagbar_compact = 1
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

" for Snippet
let g:snippetsEmu_key = "<C-j>"  

" Задаем собственные функции для назначения имен заголовкам табов -->
    function! MyTabLine()
        let tabline = ''

        " Формируем tabline для каждой вкладки -->
            for i in range(tabpagenr('$'))
                " Подсвечиваем заголовок выбранной в данный момент вкладки.
                if i + 1 == tabpagenr()
                    let tabline .= '%#TabLineSel#'
                else
                    let tabline .= '%#TabLine#'
                endif

                " Устанавливаем номер вкладки
                let tabline .= '%' . (i + 1) . 'T'

                " Получаем имя вкладки
                let tabline .= ' %{MyTabLabel(' . (i + 1) . ')} |'
            endfor
        " Формируем tabline для каждой вкладки <--

        " Заполняем лишнее пространство
        let tabline .= '%#TabLineFill#%T'

        " Выровненная по правому краю кнопка закрытия вкладки
        if tabpagenr('$') > 1
            let tabline .= '%=%#TabLine#%999XX'
        endif

        return tabline
    endfunction

    function! MyTabLabel(n)
        let label = ''
        let buflist = tabpagebuflist(a:n)

        " Имя файла и номер вкладки -->
            let label = substitute(bufname(buflist[tabpagewinnr(a:n) - 1]), '.*/', '', '')

            if label == ''
                let label = '[No Name]'
            endif

            let label .= ' (' . a:n . ')'
        " Имя файла и номер вкладки <--

        " Определяем, есть ли во вкладке хотя бы один
        " модифицированный буфер.
        " -->
            for i in range(len(buflist))
                if getbufvar(buflist[i], "&modified")
                    let label = '[+] ' . label
                    break
                endif
            endfor
        " <--

        return label
    endfunction

    function! MyGuiTabLabel()
        return '%{MyTabLabel(' . tabpagenr() . ')}'
    endfunction

    set tabline=%!MyTabLine()
    set guitablabel=%!MyGuiTabLabel()
" Задаем собственные функции для назначения имен заголовкам табов <--

" Проверка запуска скриптов Python
autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
autocmd BufRead *.py nmap <F9> :!python %<CR> 
