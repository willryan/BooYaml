import BooYaml
import BooSpec

class BooYamlSpec (Spec): 

  def Spec():
    Describe("#Parse") do:
      It("parses a file") do:
        obj = Yaml.Parse("Fixtures/test.yml")
        Expect(obj['foo']['bar']).ToEqual('1')
        Expect(obj['foo']['baz']).ToEqual('2')
        Expect(obj['foo']['array'][0]).ToEqual('1')
        Expect(obj['foo']['array'][1]).ToEqual('2')
        Expect(obj['foo']['array'][2]).ToEqual('3')
        Expect(obj['nestedHash']['nestedKey']['finally']).ToEqual('boo')
        Expect(obj['nestedArr'][0]['array'][0]).ToEqual('test')
        Expect(obj['arrObj'][0]['key1']).ToEqual('val1')
        Expect(obj['arrObj'][0]['key2']).ToEqual('val2')
        Expect(obj['arrObj'][1]['key1']).ToEqual('valA')
        Expect(obj['arrObj'][1]['key2']).ToEqual('valB')

