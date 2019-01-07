# Personal man pages

Personal section in the manual

## Install

Needs the def of a `ben` man section: add `ben` section to the MANSECT, like in the /etc/manpath.config
(Maybe add home/man to the manpath (export from zshrc) but probably useless)

## Command

To have the `manb` command, you need ln the manb file to /usr/local/bin (and maybe give it execution access)

### Usage

To read the personal page for `cat`:
```bash
manb cat
```

To edit the personal page for `cat`:
```bash
manb -e cat
```
 
