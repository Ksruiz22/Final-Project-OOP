from tkinter import *
from tkinter import ttk
from tkinter import messagebox
import mariadb


class Demo:
    def __init__(self, ventana):
        self.ventana = ventana
        self.ventana.title("Buscador por filtros")
        marco = LabelFrame(self.ventana, text="Recetas")
        marco.grid(row=0, column=0, columnspan=3, pady=20)
        # Nombre
        Label(marco, text="Nombre").grid(row=0, column=0)
        self.nombre = Entry(marco)
        self.nombre.grid(row=0, column=1)
        self.nombre.focus()
        # Clave
        Label(marco, text="Clave").grid(row=1, column=0)
        self.clave = Entry(marco)
        self.clave.grid(row=1, column=1)
        # Boton
        self.crear = Button(marco, text="Crear receta",
                            command=self.agregarRegistro, bg="green", fg="white")
        self.crear.grid(row=2, columnspan=2, sticky=W+E)
        self.editar = Button(marco, text="Editar receta",
                             command=self.editarRegistro, bg="yellow")
        self.editar.grid(row=3, columnspan=2, sticky=W+E)
        self.editar["state"] = "disabled"
        self.borrar = Button(marco, text="Borrar receta",
                             command=self.borrarRegistro, bg="red", fg="white")
        self.borrar.grid(row=4, columnspan=2, sticky=W+E)
        self.borrar["state"] = "disabled"
        # Mensaje
        self.mensaje = Label(text='', fg='green')
        self.mensaje.grid(row=5, column=0, columnspan=2, sticky=W+E)
        # Buscar nombre
        Label(self.ventana, text="Buscar recta").grid(row=6, column=0)
        self.buscarIngrediente = Entry(self.ventana)
        self.buscarIngrediente.grid(row=6, column=1)
        # Clave
        Label(self.ventana, text="Buscar índice").grid(row=7, column=0)
        self.buscarClave = Entry(self.ventana)
        self.buscarClave.grid(row=7, column=1)
        # Boton buscar
        Button(self.ventana, text="Buscar ingrediente", command=self.buscarRegistro,
               bg="white", fg="black").grid(row=8, columnspan=2, sticky=W+E)
        # Tabla
        self.tabla = ttk.Treeview(self.ventana, columns=1)
        self.tabla.bind("<Double-Button-1>", self.doubleClickTabla)
        self.tabla.grid(row=6, column=0, columnspan=2)
        self.tabla.grid(row=9, column=0, columnspan=2)
        self.tabla.heading("#0", text="Nombre de la receta", anchor=CENTER)
        self.tabla.heading("#1", text="Receta_ID", anchor=CENTER)

    def queryRecetas(self, query):
        try:
            conn = mariadb.connect(
                host="localhost",
                user="root",
                password="",
                database="recetas"
            )
        except mariadb.Error as e:
            print("Error al conectarse a la bd ", e)
        cur = conn.cursor()
        cur.execute(query)
        return cur

    def mostrarDatos(self, where=""):
        registros = self.tabla.get_children()
        for registro in registros:
            self.tabla.delete(registro)
        cur = self.queryRecetas("SELECT `Nombre`,`Receta_ID` FROM `productrecipes`")
        if len(where) > 0:
            cur = self.queryRecetas(
                "SELECT `Nombre`,`Receta_ID` FROM `productrecipes`"+where)
        else:
            cur = self.queryRecetas("SELECT `Nombre`,`Receta_ID` FROM `productrecipes`")

        for (nombre, receta_id) in cur:
            self.tabla.insert('', 0, text=nombre, value = receta_id)

    def agregarRegistro(self):
        if len(self.nombre.get()) != 0 and len(self.clave.get()) != 0:
            query = "INSERT INTO `productrecipes` (`Nombre`,`Receta_ID`) VALUES ('" + \
                self.nombre.get()+"', '"+self.clave.get()+"');"
            self.queryRecetas(query)
            self.mensaje['text'] = "La receta " + \
                self.nombre.get()+" se a insertado exitosamente"
            self.nombre.delete(0, END)
            self.clave.delete(0, END)
            self.nombre.focus()
        else:
            self.mensaje['text'] = "El ingrediente y la ide de la receta no pueden estar vacias"
        self.mostrarDatos()

    def editarRegistro(self):
        if len(self.nombre.get()) != 0 and len(self.clave.get()) != 0:
            query = "UPDATE productrecipes set nombre='"+self.nombre.get()+"',Receta_ID='"+self.clave.get() + \
                "' where Receta_ID='"+self.claveVieja+"'; "
            self.queryRecetas(query)
            self.mensaje['text'] = "La receta " + \
                self.nombre.get()+" se a actualizado exitosamente"
            self.nombre.delete(0, END)
            self.clave.delete(0, END)
            self.nombre.focus()
        else:
            self.mensaje['text'] = "El ingrediente y la receta_ID de la receta no pueden estar vacias"
        self.mostrarDatos()
        self.crear["state"] = "normal"
        self.editar["state"] = "disabled"
        self.borrar["state"] = "disabled"

    def doubleClickTabla(self, event):
        self.claveVieja = str(self.tabla.item(
            self.tabla.selection())["values"][0])
        self.nombre.delete(0, END)
        self.clave.delete(0, END)
        self.crear["state"] = "disable"
        self.editar["state"] = "normal"
        self.borrar["state"] = "normal"
        self.nombre.insert(
            0, str(self.tabla.item(self.tabla.selection())["text"]))
        self.clave.insert(0, str(self.tabla.item(
            self.tabla.selection())["values"][0]))

    def borrarRegistro(self):
        if messagebox.askyesno(message="¿Realmente deseas borrar el registro?", title="Borrar Receta") == True:
            query = "delete from productrecipes where Receta_ID='"+self.claveVieja+"' "
            self.queryRecetas(query)
            self.mensaje['text'] = "La receta " + \
                self.nombre.get()+" se a borrado exitosamente"
            self.nombre.delete(0, END)
            self.clave.delete(0, END)
            self.nombre.focus()
            self.mostrarDatos()
            self.crear["state"] = "normal"
            self.editar["state"] = "disabled"
            self.borrar["state"] = "disabled"

    def buscarRegistro(self):
        where = " where 1=1 "
        if len(self.buscarIngrediente.get()) > 0:
            where = where+" and nombre='"+self.buscarIngrediente.get()+"' "
        if len(self.buscarClave.get()) > 0:
            where = where+" and Receta_ID='"+self.buscarClave.get()+"' "
        self.mostrarDatos(where)

    def receta_id(self, where=""):
        if len(where) > 0:
            cur = self.queryRecetas(
                "SELECT `Nombre`,`Receta_ID` FROM `productrecipes`"+where)
        else:
            cur = self.queryRecetas("SELECT `Nombre`,`Receta_ID` FROM `productrecipes`")


if __name__ == "__main__":
    ventana = Tk()
    aplicacion = Demo(ventana)
    aplicacion.mostrarDatos()
    ventana.mainloop()
