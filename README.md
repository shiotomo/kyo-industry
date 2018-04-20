# kyo-industry

## 誰でも簡単形態素解析ツール

#### 説明
誰でも簡単に形態素解析を行えるように作成したツールです。  
以下のURLからお使いいただけます。  
https://kyo-industry.tomosse.work
  
サーバサイドでmecabを動かしています。

#### 使用ツール
- Ruby 2.5.0
- Sinatra
- Unicorn
- mecab
- natto

#### memo
mecabのインストール  
ubuntu
```
sudo apt-get -y install mecab mecab-ipadic-utf8
```
mecabのPATHを通す
```
export MECAB_PATH=/usr/lib/libmecab.so.2
```

### 実行
```
bundle exec unicorn -E production -c unicorn.rb -p4567
```
