//: Playground - noun: a place where people can play

import UIKit


//Optional-----------------------------------------
//? aceita nulo
//! não aceita nulo
class Music {
    var title: String?
    var rating: Int?

    init(title: String?, rating: Int?) {
        self.title = title
        self.rating = rating
    }
}

var music: Music = Music(title: "Should stay or should I go",
    rating: nil)

music.title
music.rating

music.title!
//music.rating!

//Optional Binding
if let rate = music.rating {
    print("music rating \(rate)")
} else {
    print("You should rating this music")
}

//------------------------------------------------

//Nil coalescing operator
// retorna a variavel que nao esta nula

var stay: String?

var go: String = "Should I go"

var should = stay ?? go

//------------------------------------------------



//Lazy--------------------------------------------

class Sobremesa {
    var name: String = "Sorvete"
}

class Jantar {
    // propriedades armazenadas como "lazy" não tem seu valor calculado até a primeira vez que são chamadas
    // elas são úteis quando o valor inicial da propriedade depende de outros itens da classe, cujos valores ainda são desconhecidos até que sua inicialização esteja completa
    // também são úteis quando o valor da propriedade é muito complexo, e não deve ser preenchido até que seja necessário
    lazy var dessert: Sobremesa = Sobremesa()
    var menu: String = "Filé ao molho mostarda com fritas"
}

let dinner: Jantar = Jantar()
dinner.dessert.name
dinner.menu

//------------------------------------------------



//Operadores is/as---------------------------------

class Wizard {
    var name: String?
    
    init(name: String) {
        self.name = name
    }
}

class WhiteWizard: Wizard {
    
    convenience init(){
        self.init(name: "Saruman")
    }
}

class GrayWizard: Wizard {
    
    convenience init() {
        self.init(name: "Gandalf")
    }
    
    func fireworks() -> String {
        return "Fogos de artifício"
    }
}

var wizard: Wizard = GrayWizard()

// operador de comparação
if wizard is WhiteWizard {
    print("Hello evil white wizard")
} else {
    print("is not WhiteWizard")
}

// operador de conversão
if let w = wizard as? WhiteWizard {
    print("is WhiteWizard")
} else {
    print("is not WhiteWizard")
}



//-----------------------------------------------

//Closures---------------------------------------

let names = ["Python", "Ruby", "Swift", "PHP", "Java"]

// exemplo de uma função para ordenar alguns nomes em ordem decrescente

func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}
var reversed = names.sort(backwards)


// Mesma função, utilizando Closures

// Sintaxe:
//{ (parameters) -> return type in
//    statements
//}


reversed = names.sort({ (s1: String, s2: String) -> Bool in
    return s1 > s2
})


//-----------------------------------------------



//Extensões--------------------------------------

var srt = "Hello, playground"

extension String {
    func size() -> Int {
        let count: Int = Array(self.characters).count
        return count
    }
    
    func lower() -> String {
        return self.lowercaseString
    }
    
    func nonVogals() -> String {
        var result: String = String()
        
        for letter in Array(self.lower().characters) {
            switch(letter) {
                case "a", "e", "i", "o", "u":
                    continue
            default:
                result += String(letter)
            }
        }
        return result
    }
}

srt.size()
srt.lower()
srt.nonVogals()

















