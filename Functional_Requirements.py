listaIngredientes = []
listaCantidades = []
listaUnidades = []
seguir = 1


class ingredientes:
    def __init__(self):
        self.ingred = listaIngredientes
        self.amount = listaCantidades
        self.unit = listaUnidades

    def getIngredient(ingrediente):
        ingrediente.append(ingrediente)

    def getAmount(cantidad):
        cantidad.append(cantidad)

    def getUnit(unidad):
        unidad.append(unidad)


print("Bienvenido al buscador de recetas")
k = ingredientes
while seguir == 1:
    ingrediente = input("Ingrese el ingrediente ")
    k.getIngredient(ingrediente)
    cantidad = input("Ingrese la cantidad ")
    k.getAmount(cantidad)
    unidad = input("Ingrese la unidades ")
    k.getUnit(unidad)
    seguir = input("¿Quiere seguir metiendo ingredientes?\n 1. Sí\n 0. No\n")
    seguir = int(seguir)
    while seguir > 1 or seguir < 0:
        print("Opción no válida")
        seguir = input(
            "¿Quiere seguir metiendo ingredientes?\n 1. Sí\n 0. No\n")
        seguir = int(seguir)
