"""Definimos la clase ingredientes"""


class ingredientes:
    """Definimos los atributos como listas para almacenar la información"""
    ingred = []
    amount = []
    unit = []

    """Constructor de la clase"""

    def __init__(self):
        self.ingred: str
        self.amount: str
        self.unit: str
    """Definimos los métodos de la clase, los cuales tienen la función de agregar los datos a las listas correspondientes"""
    def getIngredient(ingrediente, ingred):
        ingred.append(ingrediente)

    def getAmount(cantidad, amount):
        amount.append(cantidad)

    def getUnit(unidad, unit):
        unit.append(unidad)


"""La variable seguir se inicializa para entrar al ciclo"""
seguir = 1
"""K es un objeto de la clase ingredientes"""
k = ingredientes
"""Bienvenida al usuario"""
print("Bienvenido al buscador de recetas")
"""Ciclo necesario para mantener al usuario en el ingreso de datos"""
while seguir == 1:
    """Se solicita al usuario un input y se utiliza el método correspondiente de la clase para almacenar la información"""
    ingrediente = input("Ingrese el ingrediente ")
    k.getIngredient(ingrediente, k.ingred)
    cantidad = input("Ingrese la cantidad ")
    k.getAmount(cantidad, k.amount)
    unidad = input("Ingrese la unidades ")
    k.getUnit(unidad, k.unit)
    """Pregunta para salir del ciclo"""
    seguir = input("¿Quiere seguir metiendo ingredientes?\n 1. Sí\n 0. No\n")
    seguir = int(seguir)
    """Verificación para cumplir con las condiciones del ciclo"""
    while seguir > 1 or seguir < 0:
        print("Opción no válida")
        seguir = input(
            "¿Quiere seguir metiendo ingredientes?\n 1. Sí\n 0. No\n")
        """Conversión de la variable seguir de String a Integer"""
        seguir = int(seguir)
"""Imprimimos las listas"""
print("\n", k.ingred, "\n", k.amount, "\n", k.unit)
