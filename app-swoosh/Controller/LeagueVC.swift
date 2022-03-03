//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Anuj Soni on 14/10/21.
//

import UIKit

class LeagueVC: UIViewController {

    //Keeping Player as implicitly unwrapped Optional
    
    
    //iska mtlb yahi hai kee data rahega raghega hee
    //when you gurranty data will be there at runtime

    //that implies
     
    //Does not create a reference when Player does not exists
    
    var player:Player!
    
    //Keeping UIButton as implicitly unwrapped Optional
    //Does not create a reference when UIButton does not exists
    //making it as weak so when the screen drops of reference to the screen also dropped to save any memoery lekage
    //It is weak by default
    @IBOutlet weak var nextBtn: UIButton!
    
    //Programmatic Segues Used in Project
    @IBAction func onNextTapped(_ sender: Any) {
    performSegue(withIdentifier:"SkillVCSegue",sender:self)
    }
    
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    
    @IBAction func onWomensTapped(_ sender: Any) {
//        player.desiredLeague="womens"
//        nextBtn.isEnabled=true
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
//        player.desiredLeague="coed"
//        nextBtn.isEnabled=true
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType:String){
        player.desiredLeague=leagueType
        nextBtn.isEnabled=true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        // Do any additional setup after loading the view.
    }
    
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func unwindFromSkillVC(unwindSegue:UIStoryboardSegue){
    
    }
    
    
    //Note
    
    //prepare for segue is always called before the destination viewcontroller viewDidLoad
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillvc = segue.destination as? SkillVC {
            skillvc.player = player
        }
    }

}

