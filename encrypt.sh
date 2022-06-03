ban() {
mkdir abc
cd abc
for a in 1.py 2.py banner.py;do
wget -q https://raw.githubusercontent.com/rooted-cyber/encrypt/main/$a
done
python banner.py
}
de() {
echo -e -n "\n\n\033[1;93m Enter word : \033[0m"
read h
if [ $h ];then
echo
echo
cat >> de.py << EOF
import os
os.system("echo '$h'|base64 -d")
EOF
printf "\033[1;92m Your decrypted word :\033[0m "
python de.py
rm de.py
fi
}
en() {
echo -e -n "\n\n\033[1;93m Enter word : \033[0m"
read h
if [ $h ];then
echo
echo
cat >> en.py << EOF
import os
os.system("echo '$h'|base64")
EOF
printf "\033[1;92m Your encrypted word :\033[0m "
python en.py
rm en.py
fi
}
menu() {
ban
printf "\n\033[91m[\033[0m1\033[91m]$(python 1.py)"
printf "\n\033[91m[\033[0m2\033[91m]$(python 2.py)\n\n"
echo -n "select >> "
read b
case $b in
1)en ;;
2)de ;;
*)menu ;;
esac
}
menu
