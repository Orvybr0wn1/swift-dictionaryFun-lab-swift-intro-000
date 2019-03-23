//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    
    var favoriteFlavorsOfIceCream = ["Joe": "Peanut Butter and Chocolate", "Tim": "Natural Vanilla", "Sophie": "Mexican Chocolate", "Deniz": "Natural Vanilla","Tom": "Mexican Chocolate", "Jim": "Natural Vanilla", "Susan": "Cookies 'N' Cream"]
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String]
    {
        var returnedNames: [String] = []
        
        for (key, value) in favoriteFlavorsOfIceCream
        {
            if value == flavor
            {
                returnedNames.append(key)
            }
        }
        
        return returnedNames
    }
    
    
    // 3.
    
    func count (forFlavor flavor: String) -> Int
    {
        var counter = 0
        
        for name in favoriteFlavorsOfIceCream
        {
            
            if name.value == flavor
            {
                counter += 1
            }
        }
        return counter
    }
    
    
    
    
    
    
    // 4.
   
    func flavor(forPerson person: String) -> String?
    {
        var flavor: String?
        
        for (key, value) in favoriteFlavorsOfIceCream
        {
            if key == person
            {
                flavor = value
            }
        }
        
        if let returnFlavor = flavor
        {
            return returnFlavor
        }
        else
        {
            return nil
        }
        
    }
    
    
    
    
    
    // 5.
   
    func replace (flavor: String, forPerson person: String) -> Bool
    {
        var flavorReplaced: Bool = false
        
        for (key, _ ) in favoriteFlavorsOfIceCream
        {
            if key == person
            {
                favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
                
                flavorReplaced = true
            }
        }
        
        return flavorReplaced
        
    }
    
    
    
    
    
    
    // 6.
    
    func remove (person: String) -> Bool
    {
        var personRemoved = false
        
        for (key, _) in favoriteFlavorsOfIceCream
        {
           if key == person
           {
            favoriteFlavorsOfIceCream.removeValue(forKey: key)
            personRemoved = true
            }
        }
        
        return personRemoved
        
    }
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int
    {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    func add(person: String, withFlavor flavor: String) -> Bool
    {
        var personAdded = false
        let allKeys = favoriteFlavorsOfIceCream.keys
        
        if !allKeys.contains(person)
        {
            favoriteFlavorsOfIceCream[person] = flavor
            personAdded = true
        }
        
        return personAdded
        
    }
    
    
    
    
    
    
    
    
    // 9.
    
    func attendeeList() -> String
    {
        let alphaNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var sortedList = ""
        let maxNumberofNames = alphaNames.count - 1
        
        for (count, name) in alphaNames.enumerated()
        {
            if let icreamFlavor = favoriteFlavorsOfIceCream[name]
            {
                if count == maxNumberofNames
                {
                    sortedList += "\(name) likes \(icreamFlavor)"
                }
                else
                {
                    sortedList += "\(name) likes \(icreamFlavor)\n"
                }
            }
        }
        
        return sortedList
    }
    
    
    
    
    
    

}
