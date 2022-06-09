# git-clone-idempotent

Like git clone, but pulls if the folder exists

```sh
npm install -g git-clone-idempotent
```

```sh
curl -o git-clone-idempotent https://raw.githubusercontent.com/mafintosh/git-clone-idempotent/master/index.sh
chmod u+x git-clone-idempotent
```

Useful for automated git clones/pulls

## Usage

``` sh
# run it once, it will clone
git-clone-idempotent git://github.com/mafintosh/git-clone-idempotent.git
# run it again, it will pull
git-clone-idempotent git://github.com/mafintosh/git-clone-idempotent.git
```

## License

MIT
