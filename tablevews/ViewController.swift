//
//  ViewController.swift
//  tablevews
//
//  Created by Alumno on 9/13/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var alumnos : [Alumno] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alumnos.append(Alumno(nombre: "Ana", apellido: "Garia", matricula: "ABC123"))
        alumnos.append(Alumno(nombre: "Jose", apellido: "Lopez", matricula: "AXC234"))
        alumnos.append(Alumno(nombre: "Dio", apellido: "Perez", matricula: "JIO098"))
        alumnos.append(Alumno(nombre: "Jotaro", apellido: "Fernandez", matricula: "JOJ023", correo: "eljojos@gmail.com"))
    }
    //numero de secciones siempre 1
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    //Contenido de cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as? CeldaAlumnoController
        
        
        celda?.lblNombre.text = alumnos[indexPath.row].nombre
        celda?.lblApellido.text = alumnos[indexPath.row].apellido
        celda?.lblMatricula.text = alumnos[indexPath.row].matricula
        celda?.lblCorreo.text = alumnos[indexPath.row].correo
        
        
        return celda!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (alumnos[indexPath.row].correo != nil){
            return 120
        }
        return 78
    }
    
    

}

