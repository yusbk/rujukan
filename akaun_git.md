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