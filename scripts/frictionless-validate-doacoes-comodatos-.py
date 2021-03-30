from frictionless import extract
rows = extract('data/doacoes-comodatos-amigo-estado-mg.csv')

file = open('data/doacoes-comodatos-amigo-estado-mg.csv', encoding = "utf-8")
print(file.read())

from pprint import pprint
from frictionless import describe

resource = describe('data/doacoes-comodatos-amigo-estado-mg.csv')
pprint(resource)

from pprint import pprint

pprint(rows)

from pprint import pprint
from frictionless import validate

report = validate('data/doacoes-comodatos-amigo-estado-mg.csv')
pprint(report.flatten(["rowPosition", "fieldPosition", "code"]))

