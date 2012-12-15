#!/bin/sh

booc Src/*.boo Specs/*.boo -r:$YAML_DOT_NET_HOME/Dll/YamlDotNet.Core.Dll -r:$YAML_DOT_NET_HOME/Dll/YamlDotNet.RepresentationModel.dll -r:$BOO_SPEC_HOME/Dll/BooSpec.dll -o:Dll/BooYamlSpecs.dll

