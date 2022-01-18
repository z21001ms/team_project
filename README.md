# README

**環境構築方法(for Docker)**
- [Docker Desktop](https://www.docker.com/products/docker-desktop) をインストールする
- Docker Desktop を起動する
- `docker-compose build`
- `docker-compose run web rake db:create`
- `docker-compose run web rake db:migrate`
- `docker-compose run web bundle exec rails webpacker:install`
- `docker-compose up`
- ブラウザを起動し、`http://localhost:3000` にアクセスする

**Must**

- [x] Demoで動作するプロダクトを開発する
- [x] Slackでのコミュニケーション
- [x] GitHub Projectsを活用したタスク管理
- [x] ブレストでのJam Boardの活用
- [x] RoRでの開発
- [x] Git/GitHubの利用
- [x] Herokuの利用
- [x] Heroku環境への自動デプロイ

**Challenge**
- [ ] PRテンプレートの活用
- [x] VMやDockerの開発環境構築
- [x] GitHubアクション上での静的解析(Linterなど)
- [x] GitHubアクション上での単体テスト実行
- [ ] GitHubアクション上でのリグレッションテスト実行
