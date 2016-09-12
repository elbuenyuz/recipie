//
//  Recipe.swift
//  recipez
//
//  Created by Daniel Ramirez on 9/10/16.
//  Copyright © 2016 simpleCoding. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Recipe: NSManagedObject {

// Insert code here to add functionality to your managed object subclass

    //get and set
    func setRecipeImage(img: UIImage){
        //convertimos a imgn PNG
        let data =  UIImagePNGRepresentation(img)
        //guardamos la informacion en una imagen
        self.image = data
        
    }
    
    func getRecipeImage(img: UIImage) ->  UIImage{
        
        let img = UIImage(data: self.image!)
        return img!
    }
}
