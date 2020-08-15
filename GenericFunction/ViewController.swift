//
//  ViewController.swift
//  GenericFunction
//
//  Created by Mayur Parmar on 15/08/20.
//  Copyright © 2020 Mayur Parmar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Return value is Any
        print("Age: \(AnyTypeGenericMethod(from: 22))")
        print("Name: \(AnyTypeGenericMethod(from: "Mayur"))")

        //Return value is dictionary
        print("City: \(dictGenericMethod(from: [1: "Ahmedabad", 2: "Surat", 3: "Vadodra"]))") // [Int : String] type dictionary
        print("Country Code: \(dictGenericMethod(from: ["India": 91 , "Singapore": 65, "USA": 1]))") // [String : Int] type dictionary
        print("User: \(dictGenericMethod(from: ["Name": "Mayur", "Age": 22]))") // [String : Any] type dictionary
 
        print("Addition: \(genericAddition(val1: 2, val2: 2.5))") // Add Int value and Double value
    }
    
    
    //Parameter is Any  -> Return value is Any
    func AnyTypeGenericMethod<Value>(from val:  Value) ->  Value {
        return val
    }
     
    //Parameter is dictionary  -> Return value is dictionary
    func dictGenericMethod<Key, Value>(from dictionary: [Key: Value]) -> [(Key, Value)] {
        return Array(dictionary)
    }

    //Parameter is Any Numeric value -> Return value is Any Numeric value (Int, Float, Double)
    func genericAddition<T : Numeric >(val1: T, val2: T) -> T {
        return val1+val2
    }


}

