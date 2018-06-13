//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Node {
    
    var value: String
    var  children: [Node] = []
    weak var parent: Node?
    
    init(value:String) {
        self.value = value
        
    }
    
    func add(child: Node)   {
        children.append(child)
        child.parent = self
        
    }
    
}

let beverages = Node(value: "beverages")

let hotBeverages = Node(value: "hot")
let coldBeverages = Node(value: "cold")

beverages.add(child: hotBeverages)
beverages.add(child: coldBeverages)

let teaBeverages = Node(value: "tea")
let coffeBeverages = Node(value: "coffee")
let cocaBeverages = Node(value: "cocoa")

let blacktea = Node(value: "black")
let greentea = Node(value: "green")
let chai = Node(value: "chai")
teaBeverages.add(child: blacktea)
teaBeverages.add(child: greentea)
teaBeverages.add(child: chai)

print(beverages)

extension Node {
    
    func search(value: String) -> Node? {
        
        if value == self.value {
            return self
        }
        for child in children {
            if let found = child.search(value: value) {
            return found
        }
        }
        return nil
    }
}

var ab = "abb"
var a = String(ab.characters.reversed())
if(ab == a) {
    
    print("It is a palindrome")
}
else {
    print("Not a palindrome")
    
}






