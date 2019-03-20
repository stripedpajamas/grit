# grit

usually my employer has my git commits set to my work email, which messes up my open source commits. i run `grit` in projects that i want to commit to from my non-work email (and sign).

## setup
add a source line to `~/.bash_profile` or wherever you put stuff like that

```bash
source /path/to/grit.sh
```

also export your email, name, and signing key id so grit can use them

```bash
export GITHUB_EMAIL="diana.prince@gmail.com"
export GITHUB_NAME="Diana Prince"
export GITHUB_GPG_KEY="F32B1833EB870AD7"
```

more info about setting up GPG signing for commits is [here](https://help.github.com/en/articles/signing-commits)

## use
just type `grit`

```bash
$ cd project-folder
$ grit
```

## License
MIT
