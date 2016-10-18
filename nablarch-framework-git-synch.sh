#!/bin/bash
#分類「framework」のモジュールをカレントディレクトリに一括clone もしくはpullし、ローカルにinstallするShell。

baseUrl="http://github.com/nablarch/"
ext=".git"

# リポジトリと同期する
echo "git clone or pull start."
count=0
cat nablarch-framework-names.txt | while read name;do
  count=`expr $count + 1`
  echo "$count 件目 $name"
  if [ -e ./${name} ]; then
    # 存在する場合はPull
    echo `(cd ./${name} && git pull)`
  else
    # 存在しない場合はclone
    url="${baseUrl}${name}${ext}"
    git clone -b develop $url
  fi
done
echo "git clone or pull end."

# ローカルにinstallする
echo "gradle install start."
count=0
cat nablarch-framework-names.txt | while read name;do
  count=`expr $count + 1`
  echo "$count 件目 $name"
  gradle clean install -x test -p ./${name} --refresh-dependencies
done
echo "gradle install end."
