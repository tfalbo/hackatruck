//: Playground - noun: a place where people can play

import UIKit


//Variáveis e Constantes--------------------------------------------

var str = "Hello, playground"

let GRAVIDADE_TERRA: Float = 9.78

let PI: Double = 3.141592

var play = "Play"

var tupla = (4, 80)

//----------------------------------------------------------------


//Operadores------------------------------------------------------

var num1: Float = 7.7
var num2: Float = 48.0

num1 = num2
num1 != num2
num2 + num1
num2 % num2
num1 > num2
//num1 === num2
//num1 !== num1

//----------------------------------------------------------------


//Tuplas----------------------------------------------------------

let bandas = ("Beatles", "Queen", "The Clash", "The Cure", "Rolling Stones")

print("Era um garoto que como eu, amava os \(bandas.0) e os \(bandas.4)")

var filme = (nome: "Jurassic Park", ano: 1993, director: "Steven Spielbert", IMDB: 8.1)

print("\(filme.nome) estreiou em \(filme.1)")

//----------------------------------------------------------------


//Array-----------------------------------------------------------

//PI, Napier, Áureo
let constantesMatematicas = [3.141592, 2.718281, 1.611803]

//Euler
//constantesMatematicas.append(0.577215)


for (posicao, constante) in constantesMatematicas.enumerate() {
    print("Posição \(posicao): constante matematica: \(constante)")
}

//----------------------------------------------------------------


//Dicionário------------------------------------------------------

var albunsDoWeezer: Dictionary<Int, String> = [1994: "Blue Album",
    1996: "Pinkerton", 2001: "Green Album", 2002: "Maladroit"]

albunsDoWeezer[2005] = "Make Believe"
albunsDoWeezer[1994] = "Weezer"

albunsDoWeezer.removeValueForKey(2001)
albunsDoWeezer.count
albunsDoWeezer.isEmpty

for (ano, album) in albunsDoWeezer {
    print("\(album) foi lançado no ano de \(ano)")
}

//----------------------------------------------------------------


// Switch---------------------------------------------------------
var respostaFundamental = 42

switch respostaFundamental {
    
case 1..<5: print("valores entre 1 até 4")
case 6...17: print("valores entre 6 até 17")
case 42: print("A resposta da vida, universo e tudo mais")
case 56...60, 90, 100: print("Aleatório")
default: print("NDA")
    
}

//----------------------------------------------------------------



//Loops-----------------------------------------------------------

for numero in 1...7 {
    print(numero)
}

for var numero = 1; numero <= 7; numero++ {
    print(numero)
}

var numero = 0
while numero <= 7 {
    numero++
    print(numero)
}

repeat{
    print("Pelo menos uma vez", terminator: "")
} while false

//----------------------------------------------------------------


//Enum------------------------------------------------------------

enum Side: String {
    case L = "Light"
    case D = "Dark"
}

var side: Side = Side.D

print(side)

switch(side){
    
case .L: print("Welcome to Rebels!")
case .D: print("You come to the Dark Side!")
    
}

//----------------------------------------------------------------



//Struct----------------------------------------------------------
struct Resolucao {
    var largura = 0
    var altura = 0

    init(largura: Int, altura: Int) {
        self.largura = largura
        self.altura = altura
    }
    
    func soma() -> Int {
        return altura + largura
    }
}

var resolucao: Resolucao = Resolucao(largura: 600, altura: 800)
resolucao.soma()

resolucao.largura
resolucao.altura

//-----------------------------------------------------------------


//Classes----------------------------------------------------------

class Humano {
    var nome: String
    var idade: Int
    
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
}

class Atleta: Humano {
    var esporte: String
    
    init(nome: String, idade: Int, esporte: String) {
        self.esporte = esporte
        super.init(nome: nome, idade: idade)
    }
}

var atleta: Atleta = Atleta(nome: "Ayrton Senna", idade: 34, esporte: "Piloto")

atleta.esporte

//-----------------------------------------------------------------


//Protocolos------------------------------------------------------

protocol TriAtleta {
    
    func correr()
    func nadar()
    func pedalar()
    
}


class Pessoa: TriAtleta {

    var nome: String
    var idade: Int

    init(nome: String, idade: Int){
        self.nome = nome
        self.idade = idade
    }
    
    func correr(){
        print("correndo")
        return
    }
    
    func nadar(){
        print("nadando")
        return
    }
    func pedalar(){
        print("pedalando")
        return
    }
}

var triatleta: TriAtleta = Pessoa(nome: "Thaissa", idade: 25)

triatleta.correr()
triatleta.nadar()
triatleta.pedalar()


for numero in 1...3{
    triatleta.correr()
    triatleta.nadar()
    triatleta.pedalar()


}
//-----------------------------------------------------------------



