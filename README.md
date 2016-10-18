# nablarch-framework 最新化Shell

分類「framework」のモジュールをカレントディレクトリに一括clone もしくはpullし、ローカルにinstallするShellです。
カレントディレクトリに対象リポジトリが存在しない場合はgit clone、対象リポジトリが存在する場合はgit pullを実行します。

## 用途

開発端末ローカルに、最新のソースコードを取得してビルドするために使用します。

※取得したソースコードで正常にビルドできることを補償するものではありません。

## 使用方法

windows環境で下記手順を実行する場合は、Git Bashを利用してください。

### SSHを用いてGitHubにアクセスする場合

nablarch-framework-git-synch_ssh.shを使用します。

#### キーペアの作成・登録が済んでいない場合は、下記手順を実施してください。

1. キーペアを作成します。
  1. キーペアを作成してください。
		cd ~/.ssh
		ssh-keygen -t rsa -C ${GitHubアカウントメールアドレス}
    ~/.ssh配下に以下のファイルが作成されます。
    * id_rsa
    * id_rsa.pub
  1. ~/.sshにconfigファイルを配置してください。
		mkdir ~/.ssh
		vi ~/.ssh/config
  1. ~/.ssh/configを以下のように編集します。
		#プロキシサーバを使用している場合
		ProxyCommand "${gitのホームディレクトリ}\bin\connect.exe" -H ${proxy host}:${proxy port} %h %p
    	Host github.com
  		Hostname ssh.github.com
  		Port 443
  		IdentityFile ~/.ssh/id_rsa
  		User git
1. https://github.com/settings/keys にブラウザからアクセスしてください。
  1. New SSH Key を押下してください。
  1. 下記内容を記入してください。
    * title→任意
    * Key→~/.ssh/id_rsa.pub の内容をCopy&Pasteしてください。
1. GitHubとの疎通確認を行います。
		ssh -T git@github.com
	下記メッセージが返ってきたら成功です。
		Hi (account名)! You've successfully authenticated, but GitHub does not provide shell access.
        
#### 一括cloneとインストール

1. リポジトリをcloneしたいディレクトリに移動してください。
2. nablarch-framework-git-synch_ssh.shとnablarch-framework-names.txtを同ディレクトリに配置し、Shellを実行してください。
3. リポジトリのcloneとgradle installが実行されます。

##### 一括pullとインストール

1. pullしたいリポジトリが配置されているディレクトリに移動してください。
2. nablarch-framework-git-synch_ssh.shとnablarch-framework-names.txtを同ディレクトリに配置し、Shellを実行してください。
3. リポジトリのpullとgradle installが実行されます。

### HTTPSを用いてGitHubにアクセスする場合

nablarch-framework-git-synch.shを使用します。

事前準備は不要です。

### 一括cloneとインストール

1. リポジトリをcloneしたいディレクトリに移動してください。
2. nablarch-framework-git-synch.shとnablarch-framework-names.txtを同ディレクトリに配置し、Shellを実行してください。
3. リポジトリのcloneとgradle installが実行されます。

### 一括pullとインストール

1. pullしたいリポジトリが配置されているディレクトリに移動してください。
2. nablarch-framework-git-synch.shとnablarch-framework-names.txtを同ディレクトリに配置し、Shellを実行してください。
3. リポジトリのpullとgradle installが実行されます。

