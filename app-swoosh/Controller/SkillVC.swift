//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Anuj Soni on 14/10/21.
//

import UIKit

class SkillVC: UIViewController {
  
    
    var player:Player!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let unwrapped = player.desiredLeague {
            print("\(unwrapped)")
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
   

    
}


