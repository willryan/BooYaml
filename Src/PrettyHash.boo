namespace BooYaml

class PrettyHash (Hash):

  def ToString():
    mapped = map(self) def (item as duck):
      return item.Key + ": " + item.Value.ToString()
    return "{$(List(mapped).Join(','))}"

