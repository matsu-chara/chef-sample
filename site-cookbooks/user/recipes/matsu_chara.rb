user "matsu_chara" do
    group 'wheel'
    supports :manage_home => true
    home "/home/matsu_chara"
    shell "/bin/zsh"
    password "$1$GNbrdhRv$GjfaOz5wOGp2LY4UKtsnI1"
end

git "/home/matsu_chara/.dotfiles" do
    repository "https://github.com/matsu-chara/dotfiles.git"
    reference "master"
    action :checkout
    user "matsu_chara"
    group "wheel"
end
