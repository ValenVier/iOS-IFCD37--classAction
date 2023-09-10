//
//  ViewController.swift
//  classAction
//
//  Created by Javier Rodríguez Valentín on 15/09/2021.
//

import UIKit

class ViewController: UIViewController {
    
    //Propiedades
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelSurname: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelDepart: UILabel!
    
    @IBOutlet weak var insertName: UITextField!
    @IBOutlet weak var insertSurname: UITextField!
    @IBOutlet weak var insertEmail: UITextField!
    @IBOutlet weak var insertDepart: UITextField!
    
    
    //Métodos
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        insertName.attributedPlaceholder = NSAttributedString(string: "Escriba su nombre",attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
       insertSurname.attributedPlaceholder = NSAttributedString(string: "Escriba sus apellidos",attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        insertEmail.attributedPlaceholder = NSAttributedString(string: "Escriba su email",attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        //Otra forma de cambiar el color del texto del placeholder es en la pestaña del identity inspector del objeto en el storyboard y en user defined añadimos: placeholderLabel.textColor con type color y marcamos el color que queremos
                
    }

    @IBAction func submit(_ sender: Any) {
        var usuario = Persona(nombre: insertName.text ?? "", apellidos: insertSurname.text ?? "", email: insertEmail.text ?? "")
        //cuando queremos coger un valor de un texto, nos dice que debemos hacer unwrap o que si no hay ningún valor le demos un valor predefinido, esto se hace con: ?? "valor predefinido"
        
        Limpiar()
        
        labelName.text = "Nombre: \(usuario.getName())"
        labelSurname.text = "Apellidos: \(usuario.getSurname())"
        labelEmail.text = "Email: \(usuario.getEmail())"
    }
    
    
    @IBAction func submitEmpleado(_ sender: Any) {
        var empleado = Empleado(nombre: insertName.text ?? "", apellidos: insertSurname.text ?? "", email: insertEmail.text ?? "", departamaneto: insertDepart.text ?? "")
        
        Limpiar()
        
        
        labelName.text = "Nombre: \(empleado.getName())"
        labelSurname.text = "Apellidos: \(empleado.getSurname())"
        labelEmail.text = "Email: \(empleado.getEmail())"
        labelDepart.text = "Departamento: \(empleado.getDepartamento())"
    }
    
    func Limpiar(){
        labelName.text = ""
        labelSurname.text = ""
        labelEmail.text = ""
        labelDepart.text = ""
    }
}

