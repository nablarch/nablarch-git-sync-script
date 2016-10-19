# nablarch-framework リモートブランチ同期シェル
ローカルリポジトリの作成、及びリモートブランチとの同期を一括で行うシェルです。

* 分類「framework」のモジュールのdevelopブランチをカレントディレクトリに一括cloneし、ローカルにinstallします。
* カレントディレクトリに対象リポジトリが存在する場合は、現在のブランチに対してgit pullを実行し、ローカルにinstallします。

※取得したソースコードが正常にビルドできることを補償するものではありません。

## Getting Started

1. 本シェルを実行し、同期専用のローカルリポジトリを作成してください。
1. 本シェルを実行し、開発用のローカルリポジトリを作成してください。
1. 同期専用のローカルリポジトリで定期的に本シェルを実行し、リポジトリを同期してください。

※ **同期専用のローカルリポジトリには変更を加えないでください。また、開発用ローカルリポジトリの更新は手動で実施してください。**

## シェルの実行方法
windows環境で下記手順を実行する場合は、Git Bashを利用してください。

### SSHを用いてGitHubにアクセスする場合
nablarch-framework-git-synch_ssh.shを使用してください。

※事前にキーペアの作成とGitHubへの登録が必要です。

#### 一括cloneとインストール

1. リポジトリをcloneしたいディレクトリに移動してください。
2. nablarch-framework-git-synch_ssh.shとnablarch-framework-names.txtを同ディレクトリに配置し、Shellを実行してください。
3. リポジトリのcloneとgradle installが実行されます。

##### 一括pullとインストール

1. pullしたいリポジトリが配置されているディレクトリに移動してください。
2. nablarch-framework-git-synch_ssh.shとnablarch-framework-names.txtを同ディレクトリに配置し、Shellを実行してください。
3. リポジトリのpullとgradle installが実行されます。

### HTTPSを用いてGitHubにアクセスする場合

nablarch-framework-git-synch.shを使用してください。

### 一括cloneとインストール

1. リポジトリをcloneしたいディレクトリに移動してください。
2. nablarch-framework-git-synch.shとnablarch-framework-names.txtを同ディレクトリに配置し、Shellを実行してください。
3. リポジトリのcloneとgradle installが実行されます。

### 一括pullとインストール

1. pullしたいリポジトリが配置されているディレクトリに移動してください。
2. nablarch-framework-git-synch.shとnablarch-framework-names.txtを同ディレクトリに配置し、Shellを実行してください。
3. リポジトリのpullとgradle installが実行されます。

