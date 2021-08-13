
`Desarrollo Mobile` > `Swift Fundamentals`


## App login mejorada

### OBJETIVO

- Implementar ciclos en la App de Login previamente realizada.

#### REQUISITOS

1. Xcode.
2. Basarse en el Ejemplo de App login.

#### DESARROLLO

1.- Registrar almenos 5 nombres de usuario y password como arrays.

```
  var users = ["User1", "User2", "User3", "User4", "User5"]
  var passwords = ["Pass1", "Pass2", "Pass3", "Pass4", "Pass5"]
```

2.- El usuario y password ingresados en pantalla deberan ser buscados en cada array mediante cíclos. Si se encuentra el usuario, mostrar un mensaje en verde y si no un mensaje en rojo de usuasrio no encontrado.


<details>
        <summary>Solución</summary>
        

	var users = ["User1", "User2", "User3", "User4", "User5"]
	var passwords = ["Pass1", "Pass2", "Pass3", "Pass4", "Pass5"]
  
	let userText = userTextField.text
	let passText = passwordTextField.text
  
	errorLabel.isHidden = false
    
	var userFound: Bool = false
	var passFound: Bool = false

    for user in users {
      if user == userText {
        userFound = true
      }
    }
    for pass in passwords {
      if pass == passText {
        passFound = true
      }
    }

    if userFound && passFound {
      errorLabel.text = "Usuario encontrado"
      errorLabel.textColor = UIColor.green
    } else {
      errorLabel.text = "Usuario no encontrado"
      errorLabel.textColor = UIColor.red
    }
  
</details>


