iOSVIPERSample
===
This is iOS App for practice VIPER architecture.

Sorry, since this time README support only Japanese.

## What is this?
これはiOSアプリにおけるVIPERアーキテクチャの実装の一例です。

## Description
[単一責任の原則](https://drive.google.com/file/d/0ByOwmqah_nuGNHEtcU5OekdDMkk/view)に則ったアーキテクチャです。

![](http://drive.google.com/uc?export=view&id=1Mm4UiwI1u-H4uhTQMmpDtgig0TFWCrKh)

### V - View  
UI(ViewController/View/Activity/Controller etc.)を主に担保します。  
基本的にPresenterの呼び出し、OutputDelegateから渡ってきた値をUIに反映させることだけに注力します。

### I - Interactor  
ビジネスロジックを担います。  
UIとは完全に引き剥がされているので、我々が解決したい問題に集中して取り組めます。  
Repositoryパターンを併用して、Remote/Localからデータ取得/保存する処理を分割すると更に取り組みやすくなるでしょう。

### P - Presenter  
ViewとInteractorの橋渡し的役割を持ちます。UIロジックはここに。  
Interactorから受け取ったデータをViewに伝えられるようにデータ変換したり、それをViewに伝搬したりします。  

### E - Entity  
アプリケーションで扱われる意味を持ったデータのまとまり、またはペイロードの役割を担います。  
VIPER的にはEntityを知っているのはInteractorのみになります。  

_このサンプルアプリではView/PresenterもEntityを知っている状態になっています。何か良い手段 or このままでも良い等のアドバイスをお待ちしております。_

### R - Router  
モジュール間のルーティングと依存関係の解決を担います。  
所謂DIはここで。Presenterから呼び出され、別モジュールへの遷移ロジックを持ちます。  

## When should we use VIPER?
- SRPに則っているので、バグの解明が比較的容易にできます。
- 新しい機能追加が容易にできます。
- 各コンポーネント同士が疎結合なので再利用性が上がります。
- UIロジックとビジネス(ドメイン)ロジックが分離しているのでユニットテストが容易にできます。

## Requirement
Xcode 10.1  
Swift 4.2.1  
macOS Mojave  

## Licence

[MIT](https://github.com/kobaken0029/iOSVIPERSample/blob/master/LICENSE)

## Author

[@kobaken0029](https://github.com/kobaken0029)

## Bibliography
[iOS Project Architecture: Using VIPER](https://cheesecakelabs.com/blog/ios-project-architecture-using-viper/)
