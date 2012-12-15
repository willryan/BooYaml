#!/bin/sh

booc Src/*.boo -r:$YAML_DOT_NET_HOME/Dll/YamlDotNet.Core.dll -r:$YAML_DOT_NET_HOME/Dll/YamlDotNet.RepresentationModel.dll -o:Dll/BooYaml.dll
