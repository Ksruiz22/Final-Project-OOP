"""1ER REQUERIMIENTO - INTRODUCCIÓN DE LOS INGREDIENTES POR PARTE DEL USUARIO"""

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


""""2NDO REQUERIMIENTO - LECTURA DEL COOKBOOK""""

"""Importamos la librería json para abrir el archivo .json"""
import json


class CookBook:
    """Constructor de la clase"""

    def _init_(self):
        path: str
        recipes: list[str]
        currentRecipe: int
        currentView: str
    """Declaración de los métodos de la clase"""
    def getPath():
        pass
        """Implementación de un requerimiento funcional, abrir el archivo .json con las recetas y almacenarlas en una lista"""
    def openFile():
        """Abrimos el archivo"""
        with open("recipes.json") as recipes:
            """Metemos la infomación del archivo en una variable"""
            data = json.load(recipes)
            """Agregamos la info a una lista"""
            recipes = [data]
            """Imprimimos la lista para mostrar su funcionalidad"""
            print(recipes)
    """Estos métodos se encargan de procesos que no regresan ningún valor, de ahí el uso del None"""
    def nextRecipe() -> None:
        pass

    def previousRecipe() -> None:
        pass

    def switchView() -> None:
        pass

    def main(str) -> None:
        pass


"""Instanciación de un objeto de la clase CookBook, la cual será nuestra base de datos para desarrollar el proyecto"""
a = CookBook
"""Usamos el método openFile de la clase para llevar a cabo todos los procedimientos"""
a.openFile()

