"""Declaración de clase"""


class RecipeDisplay(Comparator):
    """No declaramos ningún atributo aquí porque esta clase hace referencia a la interfaz gráfica del proyecto"""

    def __init__(self):
        pass
    """Declaración de los métodos de la clase"""
    def printFilter(filter):
        pass
    """Estos métodos se encargan de procesos que no regresan ningún valor, de ahí el uso del None"""
    def updateRecipe(Recipe) -> None:
        pass

    def changeIngredients(int) -> None:
        pass

    def setVisible(boolean) -> None:
        pass


"""Declaración de clase"""


class Comparator:
    """Constructor de la clase"""

    def __init__(self):
        cookBook: CookBook
        ingredient: Ingredient
    """Declaración de los métodos de la clase"""
    def filter(cookBook, ingredient):
        pass


"""Declaración de clase"""


class Ingredient:
    """Constructor de la clase"""

    def __init__(self):
        name: str
        amount: int
        unit: str


"""Declaración de clase"""


class User(Ingredient):
    """Constructor de la clase"""

    def __init__(self):
        ingred: list[Ingredient]
        amount: list[int]
        unit: list[str]
    """Declaración de los métodos de la clase"""
    def getingredient(ingred):
        pass

    def getAmount(amount):
        pass

    def getUnit(unit):
        pass


"""Declaración de clase"""


class CookBook:
    """Constructor de la clase"""

    def _init_(self):
        path: str
        recipes: list[str]
        currentRecipe: int
        currentView: str
        recDisplay: RecipeDisplay
    """Declaración de los métodos de la clase"""
    def getPath():
        pass

    def openFile(path):
        pass
    """Estos métodos se encargan de procesos que no regresan ningún valor, de ahí el uso del None"""
    def nextRecipe() -> None:
        pass

    def previousRecipe() -> None:
        pass

    def switchView() -> None:
        pass

    def main(str) -> None:
        pass


"""Declaración de clase"""


class RecipeReader:
    """Constructor de la clase"""

    def __init__(self):
        dataPath: str
    """Declaración del método de la clase"""
    def readRecipe(Recipe):
        pass


"""Declaración de clase"""


class Recipe:
    """Constructor de la clase"""

    def _init_(self):
        title: str
        description: str
        ingredients: list[Ingredient]
        """BufferedImage no está declarada porque es una idea que aún no implementamos del todo"""
        image: BufferedImage
        miniatura: BufferedImage
