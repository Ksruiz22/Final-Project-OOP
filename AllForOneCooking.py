from tkinter import Entry, Label, Frame, Tk, Button, ttk, Scrollbar, VERTICAL, HORIZONTAL, StringVar, END
import mariadb


class Registro_datos():

    def __init__(self):
        self.conexion = mariadb.connect(host="localhost",
                                        user="root",
                                        password="",
                                        database="recetas"
                                        )

    def inserta_producto(self, codigo, nombre, cantidad, nombreReceta, preparacion):
        cur = self.conexion.cursor()
        sql = '''INSERT INTO  productrecipes (CODIGO, NOMBRE, CANTIDAD, NOMBRERECETA, PREPARACION) 
        VALUES('{}', '{}','{}', '{}','{}')'''.format(codigo, nombre, cantidad, nombreReceta, preparacion)
        cur.execute(sql)
        self.conexion.commit()
        cur.close()

    def mostrar_productos(self):
        cursor = self.conexion.cursor()
        sql = "SELECT `ID`,`Nombre`,`Cantidad`,`Nombre_receta`,`Preparación` FROM `productrecipes` "
        cursor.execute(sql)
        registro = cursor.fetchall()
        return registro

    def busca_producto(self, nombre_producto):
        cur = self.conexion.cursor()
        sql = "SELECT `ID`,`Nombre`,`Cantidad`,`Nombre_receta`,`Preparación` FROM `productrecipes` WHERE NOMBRE = {}".format(
            nombre_producto)
        cur.execute(sql)
        nombreX = cur.fetchall()
        cur.close()
        return nombreX

    def elimina_productos(self, nombre):
        cur = self.conexion.cursor()
        sql = '''DELETE FROM productrecipe WHERE NOMBRE = {}'''.format(nombre)
        cur.execute(sql)
        self.conexion.commit()
        cur.close()


class Registro(Frame):
    def __init__(self, master, *args, **kwargs):
        super().__init__(master, *args, **kwargs)

        self.frame1 = Frame(master)
        self.frame1.grid(columnspan=2, column=0, row=0)
        self.frame2 = Frame(master, bg='navy')
        self.frame2.grid(column=0, row=1)
        self.frame3 = Frame(master)
        self.frame3.grid(rowspan=2, column=1, row=1)

        self.frame4 = Frame(master, bg='black')
        self.frame4.grid(column=0, row=2)

        self.codigo = StringVar()
        self.nombre = StringVar()
        self.modelo = StringVar()
        self.precio = StringVar()
        self.cantidad = StringVar()
        self.buscar = StringVar()

        self.base_datos = Registro_datos()
        self.create_wietgs()

    def create_wietgs(self):
        Label(self.frame1, text='R E G I S T R O \t D E \t D A T O S', bg='gray22',
              fg='white', font=('Orbitron', 15, 'bold')).grid(column=0, row=0)

        Label(self.frame2, text='Agregar Nuevos Datos', fg='white', bg='navy', font=(
            'Rockwell', 12, 'bold')).grid(columnspan=2, column=0, row=0, pady=5)
        Label(self.frame2, text='Índice', fg='white', bg='navy', font=(
            'Rockwell', 13, 'bold')).grid(column=0, row=1, pady=15)
        Label(self.frame2, text='Ingrediente', fg='white', bg='navy', font=(
            'Rockwell', 13, 'bold')).grid(column=0, row=2, pady=15)
        Label(self.frame2, text='Cantidad', fg='white', bg='navy', font=(
            'Rockwell', 13, 'bold')).grid(column=0, row=3, pady=15)
        Label(self.frame2, text='Receta', fg='white', bg='navy', font=(
            'Rockwell', 13, 'bold')).grid(column=0, row=4, pady=15)
        Label(self.frame2, text='Preparación', fg='white', bg='navy', font=(
            'Rockwell', 13, 'bold')).grid(column=0, row=5, pady=15)

        Entry(self.frame2, textvariable=self.codigo, font=(
            'Arial', 12)).grid(column=1, row=1, padx=5)
        Entry(self.frame2, textvariable=self.nombre,
              font=('Arial', 12)).grid(column=1, row=2)
        Entry(self.frame2, textvariable=self.modelo,
              font=('Arial', 12)).grid(column=1, row=3)
        Entry(self.frame2, textvariable=self.precio,
              font=('Arial', 12)).grid(column=1, row=4)
        Entry(self.frame2, textvariable=self.cantidad,
              font=('Arial', 12)).grid(column=1, row=5)

        Label(self.frame4, text='Control', fg='white', bg='black', font=(
            'Rockwell', 12, 'bold')).grid(columnspan=3, column=0, row=0, pady=1, padx=4)
        Button(self.frame4, command=self.agregar_datos, text='REGISTRAR', font=(
            'Arial', 10, 'bold'), bg='magenta2').grid(column=0, row=1, pady=10, padx=4)
        Button(self.frame4, command=self.limpiar_datos, text='LIMPIAR', font=(
            'Arial', 10, 'bold'), bg='orange red').grid(column=1, row=1, padx=10)
        Button(self.frame4, command=self.eliminar_fila, text='ELIMINAR', font=(
            'Arial', 10, 'bold'), bg='yellow').grid(column=2, row=1, padx=4)
        Button(self.frame4, command=self.buscar_nombre, text='BUSCAR POR INGREDIENTE', font=(
            'Arial', 8, 'bold'), bg='orange').grid(columnspan=2, column=1, row=2)
        Entry(self.frame4, textvariable=self.buscar, font=('Arial', 12),
              width=10).grid(column=0, row=2, pady=1, padx=8)
        Button(self.frame4, command=self.mostrar_todo, text='MOSTRAR DATOS DE MYSQL', font=(
            'Arial', 10, 'bold'), bg='green2').grid(columnspan=3, column=0, row=3, pady=8)

        self.tabla = ttk.Treeview(self.frame3, height=21)
        self.tabla.grid(column=0, row=0)

        ladox = Scrollbar(self.frame3, orient=HORIZONTAL,
                          command=self.tabla.xview)
        ladox.grid(column=0, row=1, sticky='ew')
        ladoy = Scrollbar(self.frame3, orient=VERTICAL,
                          command=self.tabla.yview)
        ladoy.grid(column=1, row=0, sticky='ns')

        self.tabla.configure(xscrollcommand=ladox.set,
                             yscrollcommand=ladoy.set)

        self.tabla['columns'] = (
            'Ingrediente', 'Cantidad', 'Receta', 'Preparación')

        self.tabla.column('#0', minwidth=100, width=120, anchor='center')
        self.tabla.column('Ingrediente', minwidth=150,
                          width=130, anchor='center')
        self.tabla.column('Cantidad', minwidth=120, width=120, anchor='center')
        self.tabla.column('Receta', minwidth=250, width=120, anchor='center')
        self.tabla.column('Preparación', minwidth=5000,
                          width=105, anchor='center')

        self.tabla.heading('#0', text='ID', anchor='center')
        self.tabla.heading('Ingrediente', text='Ingrediente', anchor='center')
        self.tabla.heading('Cantidad', text='Cantidad', anchor='center')
        self.tabla.heading('Receta', text='Receta', anchor='center')
        self.tabla.heading('Preparación', text='Preparación', anchor='center')

        estilo = ttk.Style(self.frame3)
        estilo.theme_use('alt')  # ('clam', 'alt', 'default', 'classic')
        estilo.configure(".", font=('Helvetica', 12, 'bold'),
                         foreground='red2')
        estilo.configure("Treeview", font=('Helvetica', 10, 'bold'),
                         foreground='black',  background='white')
        estilo.map('Treeview', background=[
                   ('selected', 'green2')], foreground=[('selected', 'black')])

        # seleccionar  fila
        self.tabla.bind("<<TreeviewSelect>>", self.obtener_fila)

    def agregar_datos(self):
        self.tabla.get_children()
        codigo = self.codigo.get()
        nombre = self.nombre.get()
        modelo = self.modelo.get()
        precio = self.precio.get()
        cantidad = self.cantidad.get()
        datos = (nombre, modelo, precio, cantidad)
        if codigo and nombre and modelo and precio and cantidad != '':
            self.tabla.insert('', 0, text=codigo, values=datos)
            self.base_datos.inserta_producto(
                codigo, nombre, modelo, precio, cantidad)

    def limpiar_datos(self):
        self.tabla.delete(*self.tabla.get_children())
        self.codigo.set('')
        self.nombre.set('')
        self.modelo.set('')
        self.precio.set('')
        self.cantidad.set('')

    def buscar_nombre(self):
        nombre_producto = self.buscar.get()
        nombre_producto = str("'" + nombre_producto + "'")
        nombre_buscado = self.base_datos.busca_producto(nombre_producto)
        self.tabla.delete(*self.tabla.get_children())
        i = -1
        for dato in nombre_buscado:
            i = i+1
            self.tabla.insert(
                '', i, text=nombre_buscado[i][0:1], values=nombre_buscado[i][1:5])

    def mostrar_todo(self):
        self.tabla.delete(*self.tabla.get_children())
        registro = self.base_datos.mostrar_productos()
        i = -1
        for dato in registro:
            i = i+1
            self.tabla.insert(
                '', i, text=registro[i][0:1], values=registro[i][1:5])

    def eliminar_fila(self):
        fila = self.tabla.selection()
        if len(fila) != 0:
            self.tabla.delete(fila)
            nombre = ("'" + str(self.nombre_borar) + "'")
            self.base_datos.elimina_productos(nombre)

    def obtener_fila(self, event):
        current_item = self.tabla.focus()
        if not current_item:
            return
        data = self.tabla.item(current_item)
        self.nombre_borar = data['values'][0]


def main():
    ventana = Tk()
    ventana.wm_title("Buscador Por Filtros")
    ventana.config(bg='gray22')
    ventana.geometry('920x520')
    ventana.resizable(0, 0)
    app = Registro(ventana)
    app.mainloop()


if __name__ == "__main__":
    main()
