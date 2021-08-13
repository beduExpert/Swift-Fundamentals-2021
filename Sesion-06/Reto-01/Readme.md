 

`Desarrollo Mobile` > `Swift Fundamentals` 
	
## Implementación de Operadores

### OBJETIVO 

- Aprender el uso de operadores mediante funciones. 

#### REQUISITOS 

1. Xcode y Playgrounds.

#### DESARROLLO

1.- Crear un nuevo proyecto de Playground.

2.- Escribir la sig. función.

```
func operator(_ val1: Int, _ val2: Int) -> Bool {
	return val1 < val2
}

let result = operator(5, 4)
print(result)

```

3.- Crear mas funciones con diferentes operadores  (>, >=, !=, ==, etc..) y mostrar los resultados.


<details>
	<summary>Solucion</summary>
	<p>Funciones con diferentes operadores.</p>
	
	func operator(_ val1: Int, _ val2: Int) -> Bool {
	return val1 < val2
	}
	
	func operator2(_ val1: Int, _ val2: Int) -> Bool {
	return val1 > val2
	}
	
	func operator3(_ val1: Int, _ val2: Int) -> Bool {
	return val1 <= val2
	}
	
	func operator4(_ val1: Int, _ val2: Int) -> Bool {
	return val1 >= val2
	}
	
	func operator5(_ val1: Int, _ val2: Int) -> Bool {
	return val1 != val2
	}
	
	func operator6(_ val1: Int, _ val2: Int) -> Bool {
	return val1 == val2
	}
</details> 

