import Foundation

class Persona{
    
    //Propiedades
    private var nombre:String?
    private var apellidos:String?
    private var email:String?
    
    //Constructores
    init (nombre nom:String, apellidos apel:String, email:String){
        self.nombre = nom
        self.apellidos = apel
        self.email = email
    }
    
    //Métodos getter & setter
    func getName()->String{
        if let nom = self.nombre{
            return nom
        }else{
            return ""
        }
    }
    func setName(Nombre:String){
        self.nombre = Nombre
    }
    
    func getSurname()->String{
        if let apel = self.apellidos{
            return apel
        }else{
            return ""
        }
    }
    func setSurname(Apellidos:String){
        self.apellidos = Apellidos
    }
    
    func getEmail()->String{
        if let email = self.email{
            return email
        }else{
            return ""
        }
    }
    func setEmail(Email:String){
        self.email = Email
    }
    
    //Métodos
    
}

class Empleado:Persona{
    
    private var departamento:String?
    
    init(nombre nom:String, apellidos apel:String, email:String, departamaneto depart:String){
        super .init(nombre: nom, apellidos: apel, email: email)
        self.departamento = depart
    }
    
    func getDepartamento()->String{
        if let depart = self.departamento{
            return depart
        }else{
            return ""
        }
    }
    func setDepartamento(Departamento:String){
        self.departamento = Departamento
    }
    
}
