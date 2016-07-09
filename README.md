What's ?
===============
chef で使用する ruby の cookbook です。

Requirements
------------
opscode の ruby_build と rbenv のcookbook が必要です（metadata記載済み）。  
berkshelfでまとめて取得して下さい。

Usage
-----
cookbook なので berkshelf で取ってきて使いましょう。

* Berksfile
```ruby
source "https://supermarket.chef.io"

cookbook "ruby", git: "https://github.com/bageljp/cookbook-ruby.git"
```

```
berks vendor
```

#### Role and Environment attributes

* sample_role.rb
```ruby
override_attributes(
  "ruby" => {
    "version" => "2.1.4",
  }
)
```

Recipes
----------

#### ruby::default
rbenv の LWRP を使った ruby をインストールします。

Attributes
----------

rbenv の LWRP に沿ってるので詳細は [opscode rbenv](https://github.com/RiotGames/rbenv-cookbook "opscode rbenv") を見てもらえれば。

#### ruby::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><tt>['ruby']['global']</tt></td>
    <td>Boolean</td>
    <td>rbenvを使ってrubyをグローバルにインストールするか。trueだとグローバル、falseだとユーザ個別にインストールする。</td>
  </tr>
  <tr>
    <td><tt>['ruby']['patch']</tt></td>
    <td>string</td>
    <td>rbenvを使ってrubyをインストールする際に適用するパッチ。あれば指定。</td>
  </tr>
</table>

