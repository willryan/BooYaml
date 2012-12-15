#!/bin/sh

booi -r:$BOO_SPEC_HOME/Dll/BooSpec.dll -r:$YAML_DOT_NET_HOME/Dll/YamlDotNet.Core.dll -r:$YAML_DOT_NET_HOME/Dll/YamlDotNet.RepresentationModel.dll -r:Dll/BooYaml.dll -r:Dll/BooYamlSpecs.dll $BOO_SPEC_HOME/Exec/BooSpecMain.boo "$@"

