# Personal man pages

Personal section in the manual

## Install

Needs the def of a `ben` man section: add `ben` section to the MANSECT, like in the /etc/manpath.config
Also add home/man to the manpath (export from zshrc)

## Command

To have the `manb` command, you need to cp the manb file to /usr/bin and give it execution access

### Usage

To read the personal page for `cat`:
```bash
manb cat
```

To edit the personal page for `cat`:
```bash
manb -e cat
```
 
