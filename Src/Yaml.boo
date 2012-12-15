namespace BooYaml

import System
import System.IO
import YamlDotNet.RepresentationModel
import BooYaml

class Yaml:

  static def Parse(path as string) as duck:
    fileData as string = File.ReadAllText(path)
    yaml = YamlStream()
    yaml.Load(StringReader(fileData))

    return ParseNode(yaml.Documents[0].RootNode)

  static def ParseNode(inNode as YamlNode) as duck:
    outNode = null
    if inNode isa YamlMappingNode:
      hashNode = PrettyHash()
      for entry in inNode as YamlMappingNode:
        hashNode[ParseNode(entry.Key)] = ParseNode(entry.Value)
      outNode = hashNode
    elif inNode isa YamlSequenceNode:
      listNode = []
      for entry in inNode as YamlSequenceNode:
        listNode.Add(ParseNode(entry))
      outNode = listNode
    elif inNode isa YamlScalarNode:
      outNode = (inNode as YamlScalarNode).Value
    else:
      raise "what am I? $(YamlNode)"
    return outNode

