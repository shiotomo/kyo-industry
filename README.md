# kyo-industry

## 誰でも形態素解析ツール

### 実行
```
bundle exec unicorn -E production -c unicorn.rb -p4567
```

#### memo
mecabのPATHを通す
```
export MECAB_PATH=/usr/lib/libmecab.so.2
```
mecabのインストール  
ubuntu
```
sudo apt-get -y install mecab mecab-ipadic-utf8
```
