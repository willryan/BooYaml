BooYaml
=======

Yaml parser for Boo - built on top of YamlDotNet, but returns Hashes and Lists instead of custom types

usage:

import BooYaml

def MyCode():
  yml = Yaml.Parse("/path/to/file.yml")
  if yml['key'] == 'value':
    for stuff as duck in yml['array']:
      print stuff['subkey']
