[![Build Status](https://snap-ci.com/pyladies-brazil/br-pyladies/branch/master/build_image)](https://snap-ci.com/pyladies-brazil/br-pyladies/branch/master)

# Overview

Este é o código fonte do site http://brasil.pyladies.com/ . Para construí-lo
estamos usando [Jekyll](http://jekyllrb.com), um poderoso gerador de sites
estáticos, o [SnapCI](snap-ci.com) como ferramenta de integração contínua e
deploy automático para o [Heroku](https://www.heroku.com/).


______________

### Escrevendo um post para o blog

[Instruções para escrever um post aqui!](https://github.com/pyladies-brazil/br-pyladies/wiki/Escrevendo-um-post-para-o-blog-Pyladies-Brasil)

______________

### Dependencias

O jekkyl é feito em Ruby então você precisa instalar ele primeiro.

No ubuntu pode ser que a versão do sistema seja antiga, então segue abaixo
como utilizar o [rbenv](https://github.com/sstephenson/rbenv) para ter uma
versão mais nova:

```sh
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
```

No Linux rode:

```sh
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
```

Quem estiver usando Mac:

```sh
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
```

Instale a ultima versão do Ruby:

```sh
rbenv install 2.2.3
```

Configure para usar a versão recem instalada:

```sh
rbenv global 2.2.3
```

Intalando o bundler

```
gem install bundler
```


______________

### Rodando o site do Pyladies Brasil localmente:

Baixe o projeto:

```sh
git clone https://github.com/pyladies-brazil/br-pyladies.git
```

Entre na pasta do projeto:

```sh
cd br-pyladies
```

Instale as dependencias:

```sh
bundle install
```

Compile e rode o servidor de teste:

```sh
jekyll serve -w
```

Acesse [http://localhost:4000/](http://localhost:4000/) para ver o site.


(você precisa ter o [bundler](http://bundler.io/) instalado)


:)
