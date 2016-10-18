# nablarch-framework 最新化Shell

分類「framework」のモジュールをカレントディレクトリに一括clone もしくはpullし、ローカルにinstallするShellです。
カレントディレクトリに対象リポジトリが存在しない場合はgit clone、対象リポジトリが存在する場合はgit pullを実行します。

## 用途

開発端末ローカルに、最新のソースコードを取得してビルドするために使用します。

※取得したソースコードで正常にビルドできることを補償するものではありません。

## 使用方法

windows環境で本シェルを実行する場合は、Git BASHを利用してください。

### 一括cloneとインストール

1. リポジトリをcloneしたいディレクトリに移動してください。
2. nablarch-framework-git-synch.shとnablarch-framework-names.txtを同ディレクトリに配置し、Shellを実行してください。
3. リポジトリのcloneとgradle installが実行されます。

### 一括pullとインストール

1. pullしたいリポジトリが配置されているディレクトリに移動してください。
2. nablarch-framework-git-synch.shとnablarch-framework-names.txtを同ディレクトリに配置し、Shellを実行してください。
3. リポジトリのpullとgradle installが実行されます。

