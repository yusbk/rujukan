# Pelbagai akaun

Untuk memeriksa username yang dipakai

    git config user.name

Untuk mengklone pelbagai akaun

    git clone git@personal:yusbk/nama_rep.git
    git clone git@work:ybkamaleri/nama_rep.git

Untuk menggunakan akaun lain di Github dari yang sedang digunakan

    git remote add origin-personal git@personal:yusbk/nama_rep.git
    git add nama_fail
    git commit -m "maklumat"
    git push -u origin-personal master

# Buat Repo melalui terminal

Untuk buat repo kosong di Github sebelum memulakan projek perkongsian. `bare` harus
sentiasa digunakan untuk berkongsi `repo`

    ssh user@host git init --bare /path/to/repo.git

Kemudian semua yang terlibat utk membangunkan `repo` boleh mengkelon `repo` tersebut

    git clone ssh://user@host/path/to/repo.git

# Git Aliases

Git aliases yang selalu dipakai

    git config --global alias.ci commit
    git config --global alias.st status
    git config --global alias.co checkout
    git config --global alias.br branch

Untuk menetapkkan git sentiasa memakai `Emacs` sebagai editor

    git config --global core.editor emacs

# Undo atau Revert

Untuk kembali ke sebelum pertukaran tetapi hanya fail-fail di direktori yang sedang
dipakai. Cara pertama hanya menggembalikan `unstaged changes`

    git checkout --l

Untuk menggembalikan pertukaran-pertukaran yang sudah `staged` dan `unstaged`

    git reset --hard
    git reset --hard HEAD

Untuk membuang semua pertukaran-pertukaran lokal kerana ingin mendapatkan versi di GitHub

    git reset --hard HEAD
    git pull

    git reset --hard a123412 #untuk id commit tertentu

Untuk *unstange* semua fail-fail yang sudah di *stage* melalui `git add`

    git reset

Untuk menggembalikan fail tertentu atau direktori tertentu

    git checkout <nama_dir atau nama_fail>

# Sekiranya ada konflik

Untuk menyimpan pertukaran-pertukaran lokal sekiranya ada konflik dengan versi Github

    git fetch origin
    git status
    git pull

    #if conflicts then?

    git add .
    git commit -m "message"
    git pull #ini akan bagi error message tapi tidak mengapa

    # buka fail yang ada konflik dan betulkan masalah konflik

    git add .
    git commit -m "fixed conflicts"
    git pull