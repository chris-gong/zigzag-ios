//
//  ViewController.swift
//  Ziggy
//
//  Created by Dan Gillis on 5/8/18.
//  Copyright © 2018 Dan Gillis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func Play(_ sender: Any) {
        
        TapsValid = true
        BallChange = true
        self.Logo.isHidden = true
        self.GameOver.isHidden = true
        self.Scoreboard.isHidden = true
        self.Retry.isHidden = true
        self.Ball.isHidden = false
        self.Play.isHidden = true
        ScoreOnBoard.isHidden = true
        HighScoreOnBoard.isHidden = true
        ScoreLabel.isHidden = false
       
        self.Ball.center.x = 178.0
        self.Ball.center.y = 390.0
        self.Pillar1.center.x = 175.0
        self.Pillar1.center.y = 436.0
        self.Pillar2.center = CGPoint(x: 214.0,y: 407.0);
        self.PillarTop2.center = CGPoint(x: Pillar1.center.x ,y:Pillar1.center.y-35)
        self.PillarTop3.center = CGPoint(x: Pillar2.center.x ,y:Pillar2.center.y-35)
        
        timer = Timer.scheduledTimer(timeInterval: 0.045, target: self, selector: #selector(ViewController.movement), userInfo: nil, repeats: true)
        self.Pillar3.center = pillarPlacement(x: Pillar2.center.x, y: Pillar2.center.y)
        self.Pillar4.center = pillarPlacement(x: Pillar3.center.x, y: Pillar3.center.y)
        self.Pillar5.center = pillarPlacement(x: Pillar4.center.x, y: Pillar4.center.y)
        self.Pillar6.center = pillarPlacement(x: Pillar5.center.x, y: Pillar5.center.y)
        self.Pillar7.center = pillarPlacement(x: Pillar6.center.x, y: Pillar6.center.y)
        self.Pillar8.center = pillarPlacement(x: Pillar7.center.x, y: Pillar7.center.y)
        self.Pillar9.center = pillarPlacement(x: Pillar8.center.x, y: Pillar8.center.y)
        self.Pillar10.center = pillarPlacement(x: Pillar9.center.x, y: Pillar9.center.y)
        self.Pillar11.center = pillarPlacement(x: Pillar10.center.x, y: Pillar10.center.y)
        self.Pillar12.center = pillarPlacement(x: Pillar11.center.x, y: Pillar11.center.y)
        self.Pillar13.center = pillarPlacement(x: Pillar12.center.x, y: Pillar12.center.y)
        self.Pillar14.center = pillarPlacement(x: Pillar13.center.x, y: Pillar13.center.y)
        self.Pillar15.center = pillarPlacement(x: Pillar14.center.x, y: Pillar14.center.y)
        self.Pillar16.center = pillarPlacement(x: Pillar15.center.x, y: Pillar15.center.y)
        self.Pillar17.center = pillarPlacement(x: Pillar16.center.x, y: Pillar16.center.y)
        self.Pillar18.center = pillarPlacement(x: Pillar17.center.x, y: Pillar17.center.y)
        self.Pillar19.center = pillarPlacement(x: Pillar18.center.x, y: Pillar18.center.y)
        self.Pillar20.center = pillarPlacement(x: Pillar19.center.x, y: Pillar19.center.y)
        self.Pillar21.center = pillarPlacement(x: Pillar20.center.x, y: Pillar20.center.y)
        self.Pillar22.center = pillarPlacement(x: Pillar21.center.x, y: Pillar21.center.y)
        self.Pillar23.center = pillarPlacement(x: Pillar22.center.x, y: Pillar22.center.y)
        self.Pillar24.center = pillarPlacement(x: Pillar23.center.x, y: Pillar23.center.y)
        self.Pillar25.center = pillarPlacement(x: Pillar24.center.x, y: Pillar24.center.y)
        self.Pillar26.center = pillarPlacement(x: Pillar25.center.x, y: Pillar25.center.y)
        
        self.Pillar1.isHidden = false
        self.Pillar2.isHidden = false
        self.Pillar3.isHidden = false
        self.Pillar4.isHidden = false
        self.Pillar5.isHidden = false
        self.Pillar6.isHidden = false
        self.Pillar7.isHidden = false
        self.Pillar8.isHidden = false
        self.Pillar9.isHidden = false
        self.Pillar10.isHidden = false
        self.Pillar11.isHidden = false
        self.Pillar12.isHidden = false
        self.Pillar13.isHidden = false
        self.Pillar14.isHidden = false
        self.Pillar15.isHidden = false
        self.Pillar16.isHidden = false
        self.Pillar17.isHidden = false
        self.Pillar18.isHidden = false
        self.Pillar19.isHidden = false
        self.Pillar20.isHidden = false
        self.Pillar21.isHidden = false
        self.Pillar22.isHidden = false
        self.Pillar23.isHidden = false
        self.Pillar24.isHidden = false
        self.Pillar25.isHidden = false
        self.Pillar26.isHidden = false
        self.PillarTop1.isHidden = false
        self.PillarTop2.isHidden = false
        self.PillarTop3.isHidden = false
        self.PillarTop4.isHidden = false
        self.PillarTop5.isHidden = false
        self.PillarTop6.isHidden = false
    }
    @IBOutlet var GameView: UIView!
    @IBAction func Retry(_ sender: Any) {
        self.viewDidLoad()
        self.Play(Play)
    }
    @IBOutlet weak var Pillar26: UIImageView!
    @IBOutlet weak var Pillar25: UIImageView!
    @IBOutlet weak var Pillar24: UIImageView!
    @IBOutlet weak var Pillar23: UIImageView!
    @IBOutlet weak var Pillar22: UIImageView!
    @IBOutlet weak var Pillar21: UIImageView!
    @IBOutlet weak var Pillar20: UIImageView!
    @IBOutlet weak var Pillar19: UIImageView!
    @IBOutlet weak var Pillar18: UIImageView!
    @IBOutlet weak var Pillar17: UIImageView!
    @IBOutlet weak var Pillar16: UIImageView!
    @IBOutlet weak var Pillar15: UIImageView!
    @IBOutlet weak var Pillar14: UIImageView!
    @IBOutlet weak var Pillar13: UIImageView!
    @IBOutlet weak var Pillar12: UIImageView!
    @IBOutlet weak var Pillar11: UIImageView!
    @IBOutlet weak var Pillar10: UIImageView!
    @IBOutlet weak var Pillar9: UIImageView!
    @IBOutlet weak var Pillar8: UIImageView!
    @IBOutlet weak var Pillar7: UIImageView!
    @IBOutlet weak var Pillar6: UIImageView!
    @IBOutlet weak var Pillar5: UIImageView!
    @IBOutlet weak var Pillar4: UIImageView!
    @IBOutlet weak var Pillar3: UIImageView!
    @IBOutlet weak var Pillar2: UIImageView!
    @IBOutlet weak var Pillar1: UIImageView!
    @IBOutlet weak var PillarTop6: UIImageView!
    @IBOutlet weak var PillarTop5: UIImageView!
    @IBOutlet weak var PillarTop4: UIImageView!
    @IBOutlet weak var PillarTop3: UIImageView!
    @IBOutlet weak var PillarTop2: UIImageView!
    @IBOutlet weak var PillarTop1: UIImageView!
    @IBOutlet weak var Scoreboard: UIImageView!
    @IBOutlet weak var Play: UIButton!
    @IBOutlet weak var Retry: UIButton!
    @IBOutlet weak var Logo: UIImageView!
    @IBOutlet weak var GameOver: UIImageView!
    @IBOutlet weak var Ball: UIImageView!
    @IBOutlet weak var HighScoreOnBoard: UILabel!
    @IBOutlet weak var ScoreOnBoard: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    var timer = Timer()
    var Score: Int = 0
    var HighScore: Int = 0
    let defaults: UserDefaults = UserDefaults.standard
    var TapsValid:Bool?
    var BallRight:Bool?
    var BallChange:Bool?
    var BallCenter: CGPoint?
    var Pillar1Center: CGPoint?
    var Pillar2Center: CGPoint?
    var Pillar3Center: CGPoint?
    var Pillar4Center: CGPoint?
    var Pillar5Center: CGPoint?
    var Pillar6Center: CGPoint?
    var Pillar7Center: CGPoint?
    var Pillar8Center: CGPoint?
    var Pillar9Center: CGPoint?
    var Pillar10Center: CGPoint?
    var Pillar11Center: CGPoint?
    var Pillar12Center: CGPoint?
    var Pillar13Center: CGPoint?
    var Pillar14Center: CGPoint?
    var Pillar15Center: CGPoint?
    var Pillar16Center: CGPoint?
    var Pillar17Center: CGPoint?
    var Pillar18Center: CGPoint?
    var Pillar19Center: CGPoint?
    var Pillar20Center: CGPoint?
    var Pillar21Center: CGPoint?
    var Pillar22Center: CGPoint?
    var Pillar23Center: CGPoint?
    var Pillar24Center: CGPoint?
    var Pillar25Center: CGPoint?
    var Pillar26Center: CGPoint?
    var PillarTop1Center: CGPoint?
    var PillarTop2Center: CGPoint?
    var PillarTop3Center: CGPoint?
    var PillarTop4Center: CGPoint?
    var PillarTop5Center: CGPoint?
    var PillarTop6Center: CGPoint?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        HighScore = defaults.integer(forKey: "Highscore")
        self.GameOver.isHidden = true
        self.Scoreboard.isHidden = true
        self.Retry.isHidden = true
        self.Ball.isHidden = true
        self.Logo.isHidden = true
        self.Play.isHidden = false
        self.Pillar1.isHidden = true
        self.Pillar2.isHidden = true
        self.Pillar3.isHidden = true
        self.Pillar4.isHidden = true
        self.Pillar5.isHidden = true
        self.Pillar6.isHidden = true
        self.Pillar7.isHidden = true
        self.Pillar8.isHidden = true
        self.Pillar9.isHidden = true
        self.Pillar10.isHidden = true
        self.Pillar11.isHidden = true
        self.Pillar12.isHidden = true
        self.Pillar13.isHidden = true
        self.Pillar14.isHidden = true
        self.Pillar15.isHidden = true
        self.Pillar16.isHidden = true
        self.Pillar17.isHidden = true
        self.Pillar18.isHidden = true
        self.Pillar19.isHidden = true
        self.Pillar20.isHidden = true
        self.Pillar21.isHidden = true
        self.Pillar22.isHidden = true
        self.Pillar23.isHidden = true
        self.Pillar24.isHidden = true
        self.Pillar25.isHidden = true
        self.Pillar26.isHidden = true
        self.PillarTop1.isHidden = true
        self.PillarTop2.isHidden = true
        self.PillarTop3.isHidden = true
        self.PillarTop4.isHidden = true
        self.PillarTop5.isHidden = true
        self.PillarTop6.isHidden = true
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if TapsValid == true {
            Score = Score + 1
            if BallRight == true {
                BallChange = false
            } else {
                BallChange = true
            }
        }
    }
    
   @objc func movement() {
        self.ScoreLabel.text = String(Score)
    
        BallCenter = self.Ball.center
        Pillar1Center = self.Pillar1.center
        Pillar2Center = self.Pillar2.center
        Pillar3Center = self.Pillar3.center
        Pillar4Center = self.Pillar4.center
        Pillar5Center = self.Pillar5.center
        Pillar6Center = self.Pillar6.center
        Pillar7Center = self.Pillar7.center
        Pillar8Center = self.Pillar8.center
        Pillar9Center = self.Pillar9.center
        Pillar10Center = self.Pillar10.center
        Pillar11Center = self.Pillar11.center
        Pillar12Center = self.Pillar12.center
        Pillar13Center = self.Pillar13.center
        Pillar14Center = self.Pillar14.center
        Pillar15Center = self.Pillar15.center
        Pillar16Center = self.Pillar16.center
        Pillar17Center = self.Pillar17.center
        Pillar18Center = self.Pillar18.center
        Pillar19Center = self.Pillar19.center
        Pillar20Center = self.Pillar20.center
        Pillar21Center = self.Pillar21.center
        Pillar22Center = self.Pillar22.center
        Pillar23Center = self.Pillar23.center
        Pillar24Center = self.Pillar24.center
        Pillar25Center = self.Pillar25.center
        Pillar26Center = self.Pillar26.center
    
        PillarTop1Center = self.PillarTop1.center
        PillarTop2Center = self.PillarTop2.center
        PillarTop3Center = self.PillarTop3.center
        PillarTop4Center = self.PillarTop4.center
        PillarTop5Center = self.PillarTop5.center
        PillarTop6Center = self.PillarTop6.center
    
    
        if BallChange == false {
            BallRight = false
        } else {
            BallRight = true
        }
        if BallRight == true {
            Ball.center.x += 6.5
            Ball.center.y -= 0.5
        } else {
            Ball.center.x -= 6.5
            Ball.center.y -= 0.5
        }
    
        Ball.center.y += 0.5
        Pillar1.center.y += 5
        Pillar2.center.y += 5
        Pillar3.center.y += 5
        Pillar4.center.y += 5
        Pillar5.center.y += 5
        Pillar6.center.y += 5
        Pillar7.center.y += 5
        Pillar8.center.y += 5
        Pillar9.center.y += 5
        Pillar10.center.y += 5
        Pillar11.center.y += 5
        Pillar12.center.y += 5
        Pillar13.center.y += 5
        Pillar14.center.y += 5
        Pillar15.center.y += 5
        Pillar16.center.y += 5
        Pillar17.center.y += 5
        Pillar18.center.y += 5
        Pillar19.center.y += 5
        Pillar20.center.y += 5
        Pillar21.center.y += 5
        Pillar22.center.y += 5
        Pillar23.center.y += 5
        Pillar24.center.y += 5
        Pillar25.center.y += 5
        Pillar26.center.y += 5
        
        Pillar1.center=movePillarUp(floatx: Pillar1.center.x, floaty: Pillar1.center.y, pillarNumber: 1)
        Pillar2.center=movePillarUp(floatx: Pillar2.center.x, floaty: Pillar2.center.y, pillarNumber: 2)
        Pillar3.center=movePillarUp(floatx: Pillar3.center.x, floaty: Pillar3.center.y, pillarNumber: 3)
        Pillar4.center=movePillarUp(floatx: Pillar4.center.x, floaty: Pillar4.center.y, pillarNumber: 4)
        Pillar5.center=movePillarUp(floatx: Pillar5.center.x, floaty: Pillar5.center.y, pillarNumber: 5)
        Pillar6.center=movePillarUp(floatx: Pillar6.center.x, floaty: Pillar6.center.y, pillarNumber: 6)
        Pillar7.center=movePillarUp(floatx: Pillar7.center.x, floaty: Pillar7.center.y, pillarNumber: 7)
        Pillar8.center=movePillarUp(floatx: Pillar8.center.x, floaty: Pillar8.center.y, pillarNumber: 8)
        Pillar9.center=movePillarUp(floatx: Pillar9.center.x, floaty: Pillar9.center.y, pillarNumber: 9)
        Pillar10.center=movePillarUp(floatx: Pillar10.center.x, floaty: Pillar10.center.y, pillarNumber: 10)
        Pillar11.center=movePillarUp(floatx: Pillar11.center.x, floaty: Pillar11.center.y, pillarNumber: 11)
        Pillar12.center=movePillarUp(floatx: Pillar12.center.x, floaty: Pillar12.center.y, pillarNumber: 12)
        Pillar13.center=movePillarUp(floatx: Pillar13.center.x, floaty: Pillar13.center.y, pillarNumber: 13)
        Pillar14.center=movePillarUp(floatx: Pillar14.center.x, floaty: Pillar14.center.y, pillarNumber: 14)
        Pillar15.center=movePillarUp(floatx: Pillar15.center.x, floaty: Pillar15.center.y, pillarNumber: 15)
        Pillar16.center=movePillarUp(floatx: Pillar16.center.x, floaty: Pillar16.center.y, pillarNumber: 16)
        Pillar17.center=movePillarUp(floatx: Pillar17.center.x, floaty: Pillar17.center.y, pillarNumber: 17)
        Pillar18.center=movePillarUp(floatx: Pillar18.center.x, floaty: Pillar18.center.y, pillarNumber: 18)
        Pillar19.center=movePillarUp(floatx: Pillar19.center.x, floaty: Pillar19.center.y, pillarNumber: 19)
        Pillar20.center=movePillarUp(floatx: Pillar20.center.x, floaty: Pillar20.center.y, pillarNumber: 20)
        Pillar21.center=movePillarUp(floatx: Pillar21.center.x, floaty: Pillar21.center.y, pillarNumber: 21)
        Pillar22.center=movePillarUp(floatx: Pillar22.center.x, floaty: Pillar22.center.y, pillarNumber: 22)
        Pillar23.center=movePillarUp(floatx: Pillar23.center.x, floaty: Pillar23.center.y, pillarNumber: 23)
        Pillar24.center=movePillarUp(floatx: Pillar24.center.x, floaty: Pillar24.center.y, pillarNumber: 24)
        Pillar25.center=movePillarUp(floatx: Pillar25.center.x, floaty: Pillar25.center.y, pillarNumber: 25)
        Pillar26.center=movePillarUp(floatx: Pillar26.center.x, floaty: Pillar26.center.y, pillarNumber: 26)

    if (((Ball.center.x > PillarTop1.center.x - 50) && (Ball.center.x < PillarTop1.center.x + 50) && (Ball.center.y > PillarTop1.center.y - 45) && (Ball.center.y < PillarTop1.center.y + 45))||((Ball.center.x > PillarTop2.center.x - 50) && (Ball.center.x < PillarTop2.center.x + 50) && (Ball.center.y > PillarTop2.center.y - 45) && (Ball.center.y < PillarTop2.center.y + 45)) || ((Ball.center.x > PillarTop3.center.x - 50) && (Ball.center.x < PillarTop3.center.x + 50) && (Ball.center.y > PillarTop3.center.y - 45) && (Ball.center.y < PillarTop3.center.y + 45)) || ((Ball.center.x > PillarTop4.center.x - 50) && (Ball.center.x < PillarTop4.center.x + 50) && (Ball.center.y > PillarTop4.center.y - 45) && (Ball.center.y < PillarTop4.center.y + 45)) || ((Ball.center.x > PillarTop5.center.x - 50) && (Ball.center.x < PillarTop5.center.x + 50) && (Ball.center.y > PillarTop5.center.y - 45) && (Ball.center.y < PillarTop5.center.y + 45)) || ((Ball.center.x > PillarTop6.center.x - 50) && (Ball.center.x < PillarTop6.center.x + 50) && (Ball.center.y > PillarTop6.center.y - 45) && (Ball.center.y < PillarTop6.center.y + 45))) {
        
        
    } else {
        gameOver()
    }
    
    if Ball.frame.intersects(Pillar1.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar26.center.x, y: Pillar26.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar1.center.x, y: Pillar1.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar2.center.x, y: Pillar2.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar25.center.x, y: Pillar25.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar24.center.x, y: Pillar24.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar23.center.x, y: Pillar23.center.y - 35)
    } else if Ball.frame.intersects(Pillar2.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar1.center.x, y: Pillar1.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar2.center.x, y: Pillar2.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar3.center.x, y: Pillar3.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar26.center.x, y: Pillar26.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar25.center.x, y: Pillar25.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar24.center.x, y: Pillar24.center.y - 35)
    } else if Ball.frame.intersects(Pillar3.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar2.center.x, y: Pillar2.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar3.center.x, y: Pillar3.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar4.center.x, y: Pillar4.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar1.center.x, y: Pillar1.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar26.center.x, y: Pillar26.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar25.center.x, y: Pillar25.center.y - 35)
    } else if Ball.frame.intersects(Pillar4.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar3.center.x, y: Pillar3.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar4.center.x, y: Pillar4.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar5.center.x, y: Pillar5.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar2.center.x, y: Pillar2.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar1.center.x, y: Pillar1.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar26.center.x, y: Pillar26.center.y - 35)
    } else if Ball.frame.intersects(Pillar5.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar4.center.x, y: Pillar4.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar5.center.x, y: Pillar5.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar6.center.x, y: Pillar6.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar3.center.x, y: Pillar3.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar2.center.x, y: Pillar2.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar1.center.x, y: Pillar1.center.y - 35)
    } else if Ball.frame.intersects(Pillar6.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar5.center.x, y: Pillar5.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar6.center.x, y: Pillar6.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar7.center.x, y: Pillar7.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar4.center.x, y: Pillar4.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar3.center.x, y: Pillar3.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar2.center.x, y: Pillar2.center.y - 35)
    } else if Ball.frame.intersects(Pillar7.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar6.center.x, y: Pillar6.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar7.center.x, y: Pillar7.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar8.center.x, y: Pillar8.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar5.center.x, y: Pillar5.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar4.center.x, y: Pillar4.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar3.center.x, y: Pillar3.center.y - 35)
    } else if Ball.frame.intersects(Pillar8.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar7.center.x, y: Pillar7.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar8.center.x, y: Pillar8.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar9.center.x, y: Pillar9.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar6.center.x, y: Pillar6.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar5.center.x, y: Pillar5.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar4.center.x, y: Pillar4.center.y - 35)
    } else if Ball.frame.intersects(Pillar9.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar8.center.x, y: Pillar8.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar9.center.x, y: Pillar9.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar10.center.x, y: Pillar10.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar7.center.x, y: Pillar7.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar6.center.x, y: Pillar6.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar5.center.x, y: Pillar5.center.y - 35)
    } else if Ball.frame.intersects(Pillar10.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar9.center.x, y: Pillar9.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar10.center.x, y: Pillar10.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar11.center.x, y: Pillar11.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar8.center.x, y: Pillar8.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar7.center.x, y: Pillar7.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar6.center.x, y: Pillar6.center.y - 35)
    } else if Ball.frame.intersects(Pillar11.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar10.center.x, y: Pillar10.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar11.center.x, y: Pillar11.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar12.center.x, y: Pillar12.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar9.center.x, y: Pillar9.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar8.center.x, y: Pillar8.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar7.center.x, y: Pillar7.center.y - 35)
    } else if Ball.frame.intersects(Pillar12.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar11.center.x, y: Pillar11.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar12.center.x, y: Pillar12.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar13.center.x, y: Pillar13.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar10.center.x, y: Pillar10.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar9.center.x, y: Pillar9.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar8.center.x, y: Pillar8.center.y - 35)
    } else if Ball.frame.intersects(Pillar13.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar12.center.x, y: Pillar12.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar13.center.x, y: Pillar13.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar14.center.x, y: Pillar14.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar11.center.x, y: Pillar11.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar10.center.x, y: Pillar10.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar9.center.x, y: Pillar9.center.y - 35)
    } else if Ball.frame.intersects(Pillar14.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar13.center.x, y: Pillar13.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar14.center.x, y: Pillar14.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar15.center.x, y: Pillar15.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar12.center.x, y: Pillar12.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar11.center.x, y: Pillar11.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar10.center.x, y: Pillar10.center.y - 35)
    } else if Ball.frame.intersects(Pillar15.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar14.center.x, y: Pillar14.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar15.center.x, y: Pillar15.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar16.center.x, y: Pillar16.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar13.center.x, y: Pillar13.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar12.center.x, y: Pillar12.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar11.center.x, y: Pillar11.center.y - 35)
    } else if Ball.frame.intersects(Pillar16.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar15.center.x, y: Pillar15.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar16.center.x, y: Pillar16.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar17.center.x, y: Pillar17.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar14.center.x, y: Pillar14.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar13.center.x, y: Pillar13.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar12.center.x, y: Pillar12.center.y - 35)
    } else if Ball.frame.intersects(Pillar17.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar16.center.x, y: Pillar16.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar17.center.x, y: Pillar17.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar18.center.x, y: Pillar18.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar15.center.x, y: Pillar15.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar14.center.x, y: Pillar14.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar13.center.x, y: Pillar13.center.y - 35)
    } else if Ball.frame.intersects(Pillar18.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar17.center.x, y: Pillar17.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar18.center.x, y: Pillar18.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar19.center.x, y: Pillar19.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar16.center.x, y: Pillar16.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar15.center.x, y: Pillar15.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar14.center.x, y: Pillar14.center.y - 35)
    } else if Ball.frame.intersects(Pillar19.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar18.center.x, y: Pillar18.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar19.center.x, y: Pillar19.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar20.center.x, y: Pillar20.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar17.center.x, y: Pillar17.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar16.center.x, y: Pillar16.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar15.center.x, y: Pillar15.center.y - 35)
    } else if Ball.frame.intersects(Pillar20.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar19.center.x, y: Pillar19.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar20.center.x, y: Pillar20.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar21.center.x, y: Pillar21.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar18.center.x, y: Pillar18.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar17.center.x, y: Pillar17.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar16.center.x, y: Pillar16.center.y - 35)
    } else if Ball.frame.intersects(Pillar21.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar20.center.x, y: Pillar20.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar21.center.x, y: Pillar21.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar22.center.x, y: Pillar22.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar19.center.x, y: Pillar19.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar18.center.x, y: Pillar18.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar17.center.x, y: Pillar17.center.y - 35)
    } else if Ball.frame.intersects(Pillar22.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar21.center.x, y: Pillar21.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar22.center.x, y: Pillar22.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar23.center.x, y: Pillar23.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar20.center.x, y: Pillar20.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar19.center.x, y: Pillar19.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar18.center.x, y: Pillar18.center.y - 35)
    } else if Ball.frame.intersects(Pillar23.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar22.center.x, y: Pillar22.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar23.center.x, y: Pillar23.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar24.center.x, y: Pillar24.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar21.center.x, y: Pillar21.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar20.center.x, y: Pillar20.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar19.center.x, y: Pillar19.center.y - 35)
    } else if Ball.frame.intersects(Pillar24.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar23.center.x, y: Pillar23.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar24.center.x, y: Pillar24.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar25.center.x, y: Pillar25.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar22.center.x, y: Pillar22.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar21.center.x, y: Pillar21.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar20.center.x, y: Pillar20.center.y - 35)
    } else if Ball.frame.intersects(Pillar25.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar23.center.x, y: Pillar23.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar24.center.x, y: Pillar24.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar25.center.x, y: Pillar25.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar22.center.x, y: Pillar22.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar21.center.x, y: Pillar21.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar20.center.x, y: Pillar20.center.y - 35)
    } else if Ball.frame.intersects(Pillar26.frame) {
        self.PillarTop1.center = CGPoint(x: Pillar24.center.x, y: Pillar24.center.y - 35)
        self.PillarTop2.center = CGPoint(x: Pillar25.center.x, y: Pillar25.center.y - 35)
        self.PillarTop3.center = CGPoint(x: Pillar26.center.x, y: Pillar26.center.y - 35)
        self.PillarTop4.center = CGPoint(x: Pillar23.center.x, y: Pillar21.center.y - 35)
        self.PillarTop5.center = CGPoint(x: Pillar22.center.x, y: Pillar22.center.y - 35)
        self.PillarTop6.center = CGPoint(x: Pillar21.center.x, y: Pillar21.center.y - 35)
    }
    
    
    }
    
    func movePillarUp(floatx:CGFloat, floaty:CGFloat, pillarNumber:Int) -> (CGPoint){
        var center = CGPoint(x: floatx, y: floaty)
        if checkPillarPosition(y: floaty) == true {
            switch pillarNumber{
            case 1:
                GameView.sendSubview(toBack: Pillar1)
                center = pillarPlacement(x: self.Pillar26.center.x, y: self.Pillar26.center.y)
                break
            case 2:
                GameView.sendSubview(toBack: Pillar2)
                center = pillarPlacement(x: self.Pillar1.center.x, y: self.Pillar1.center.y)
                break
            case 3:
                GameView.sendSubview(toBack: Pillar3)
                center = pillarPlacement(x: self.Pillar2.center.x, y: self.Pillar2.center.y)
                break
            case 4:
                GameView.sendSubview(toBack: Pillar4)
                center = pillarPlacement(x: self.Pillar3.center.x, y: self.Pillar3.center.y)
                break
            case 5:
                GameView.sendSubview(toBack: Pillar5)
                center = pillarPlacement(x: self.Pillar4.center.x, y: self.Pillar4.center.y)
                break
            case 6:
                GameView.sendSubview(toBack: Pillar6)
                center = pillarPlacement(x: self.Pillar5.center.x, y: self.Pillar5.center.y)
                break
            case 7:
                GameView.sendSubview(toBack: Pillar7)
                center = pillarPlacement(x: self.Pillar6.center.x, y: self.Pillar6.center.y)
                break
            case 8:
                GameView.sendSubview(toBack: Pillar8)
                center = pillarPlacement(x: self.Pillar7.center.x, y: self.Pillar7.center.y)
                break
            case 9:
                GameView.sendSubview(toBack: Pillar9)
                center = pillarPlacement(x: self.Pillar8.center.x, y: self.Pillar8.center.y)
                break
            case 10:
                GameView.sendSubview(toBack: Pillar10)
                center = pillarPlacement(x: self.Pillar9.center.x, y: self.Pillar9.center.y)
                break
            case 11:
                GameView.sendSubview(toBack: Pillar11)
                center = pillarPlacement(x: self.Pillar10.center.x, y: self.Pillar10.center.y)
                break
            case 12:
                GameView.sendSubview(toBack: Pillar12)
                center = pillarPlacement(x: self.Pillar11.center.x, y: self.Pillar11.center.y)
                break
            case 13:
                GameView.sendSubview(toBack: Pillar13)
                center = pillarPlacement(x: self.Pillar12.center.x, y: self.Pillar12.center.y)
                break
            case 14:
                GameView.sendSubview(toBack: Pillar14)
                center = pillarPlacement(x: self.Pillar13.center.x, y: self.Pillar13.center.y)
                break
            case 15:
                GameView.sendSubview(toBack: Pillar15)
                center = pillarPlacement(x: self.Pillar14.center.x, y: self.Pillar14.center.y)
                break
            case 16:
                GameView.sendSubview(toBack: Pillar16)
                center = pillarPlacement(x: self.Pillar15.center.x, y: self.Pillar15.center.y)
                break
            case 17:
                GameView.sendSubview(toBack: Pillar17)
                center = pillarPlacement(x: self.Pillar16.center.x, y: self.Pillar16.center.y)
                break
            case 18:
                GameView.sendSubview(toBack: Pillar18)
                center = pillarPlacement(x: self.Pillar17.center.x, y: self.Pillar17.center.y)
                break
            case 19:
                GameView.sendSubview(toBack: Pillar19)
                center = pillarPlacement(x: self.Pillar18.center.x, y: self.Pillar18.center.y)
                break
            case 20:
                GameView.sendSubview(toBack: Pillar20)
                center = pillarPlacement(x: self.Pillar19.center.x, y: self.Pillar19.center.y)
                break
            case 21:
                GameView.sendSubview(toBack: Pillar21)
                center = pillarPlacement(x: self.Pillar20.center.x, y: self.Pillar20.center.y)
                break
            case 22:
                GameView.sendSubview(toBack: Pillar22)
                center = pillarPlacement(x: self.Pillar21.center.x, y: self.Pillar21.center.y)
                break
            case 23:
                GameView.sendSubview(toBack: Pillar23)
                center = pillarPlacement(x: self.Pillar22.center.x, y: self.Pillar22.center.y)
                break
            case 24:
                GameView.sendSubview(toBack: Pillar24)
                center = pillarPlacement(x: self.Pillar23.center.x, y: self.Pillar23.center.y)
                break
            case 25:
                GameView.sendSubview(toBack: Pillar25)
                center = pillarPlacement(x: self.Pillar24.center.x, y: self.Pillar24.center.y)
                break
            case 26:
                GameView.sendSubview(toBack: Pillar26)
                center = pillarPlacement(x: self.Pillar25.center.x, y: self.Pillar25.center.y)
                break
            default:
                break
            }
            
        }
        return(center)
    }
    func checkPillarPosition(y: CGFloat) -> (Bool){
        var low = false
        if (y > 720){
            low = true
        }
        
        return(low)
    }
    
    override func viewDidLayoutSubviews() {
        if let newBallCenter = BallCenter {
            self.Ball.center = newBallCenter
        }
        if let newPillar1Center = Pillar1Center {
            self.Pillar1.center = newPillar1Center
        }
        if let newPillar2Center = Pillar2Center {
            self.Pillar2.center = newPillar2Center
        }
        if let newPillar3Center = Pillar3Center {
            self.Pillar3.center = newPillar3Center
        }
        if let newPillar4Center = Pillar4Center {
            self.Pillar4.center = newPillar4Center
        }
        if let newPillar5Center = Pillar5Center {
            self.Pillar5.center = newPillar5Center
        }
        if let newPillar6Center = Pillar6Center {
            self.Pillar6.center = newPillar6Center
        }
        if let newPillar7Center = Pillar7Center {
            self.Pillar7.center = newPillar7Center
        }
        if let newPillar8Center = Pillar8Center {
            self.Pillar8.center = newPillar8Center
        }
        if let newPillar9Center = Pillar9Center {
            self.Pillar9.center = newPillar9Center
        }
        if let newPillar10Center = Pillar10Center {
            self.Pillar10.center = newPillar10Center
        }
        if let newPillar11Center = Pillar11Center {
            self.Pillar11.center = newPillar11Center
        }
        if let newPillar12Center = Pillar12Center {
            self.Pillar12.center = newPillar12Center
        }
        if let newPillar13Center = Pillar13Center {
            self.Pillar13.center = newPillar13Center
        }
        if let newPillar14Center = Pillar14Center {
            self.Pillar14.center = newPillar14Center
        }
        if let newPillar15Center = Pillar15Center {
            self.Pillar15.center = newPillar15Center
        }
        if let newPillar16Center = Pillar16Center {
            self.Pillar16.center = newPillar16Center
        }
        if let newPillar17Center = Pillar17Center {
            self.Pillar17.center = newPillar17Center
        }
        if let newPillar18Center = Pillar18Center {
            self.Pillar18.center = newPillar18Center
        }
        if let newPillar19Center = Pillar19Center {
            self.Pillar19.center = newPillar19Center
        }
        if let newPillar20Center = Pillar20Center {
            self.Pillar20.center = newPillar20Center
        }
        if let newPillar21Center = Pillar21Center {
            self.Pillar21.center = newPillar21Center
        }
        if let newPillar22Center = Pillar22Center {
            self.Pillar22.center = newPillar22Center
        }
        if let newPillar23Center = Pillar23Center {
            self.Pillar23.center = newPillar23Center
        }
        if let newPillar24Center = Pillar24Center {
            self.Pillar24.center = newPillar24Center
        }
        if let newPillar25Center = Pillar25Center {
            self.Pillar25.center = newPillar25Center
        }
        if let newPillar26Center = Pillar26Center {
            self.Pillar26.center = newPillar26Center
        }
        if let newPillarTop1Center = PillarTop1Center {
            self.PillarTop1.center = newPillarTop1Center
        }
        if let newPillarTop2Center = PillarTop2Center {
            self.PillarTop2.center = newPillarTop2Center
        }
        if let newPillarTop3Center = PillarTop3Center {
            self.PillarTop3.center = newPillarTop3Center
        }
        if let newPillarTop4Center = PillarTop4Center {
            self.PillarTop4.center = newPillarTop4Center
        }
        if let newPillarTop5Center = PillarTop5Center {
            self.PillarTop5.center = newPillarTop5Center
        }
        if let newPillarTop6Center = PillarTop6Center {
            self.PillarTop6.center = newPillarTop6Center
        }
        
    }
    
    func gameOver() {
        TapsValid = false
        timer.invalidate()
        ScoreLabel.isHidden = true
        GameOver.isHidden = false
        Retry.isHidden = false
        Scoreboard.isHidden = false
        
        if Score > HighScore {
            HighScore = Score
        }
        defaults.set(HighScore, forKey: "HighScore")
        self.ScoreOnBoard.text = String(Score)
        self.HighScoreOnBoard.text = String(HighScore)
        ScoreOnBoard.isHidden = false
        HighScoreOnBoard.isHidden = false
        
        GameView.sendSubview(toBack: Pillar1)
        GameView.sendSubview(toBack: Pillar2)
        GameView.sendSubview(toBack: Pillar3)
        GameView.sendSubview(toBack: Pillar4)
        GameView.sendSubview(toBack: Pillar5)
        GameView.sendSubview(toBack: Pillar6)
        GameView.sendSubview(toBack: Pillar7)
        GameView.sendSubview(toBack: Pillar8)
        GameView.sendSubview(toBack: Pillar9)
        GameView.sendSubview(toBack: Pillar10)
        GameView.sendSubview(toBack: Pillar11)
        GameView.sendSubview(toBack: Pillar12)
        GameView.sendSubview(toBack: Pillar13)
        GameView.sendSubview(toBack: Pillar14)
        GameView.sendSubview(toBack: Pillar15)
        GameView.sendSubview(toBack: Pillar16)
        GameView.sendSubview(toBack: Pillar17)
        GameView.sendSubview(toBack: Pillar18)
        GameView.sendSubview(toBack: Pillar19)
        GameView.sendSubview(toBack: Pillar20)
        GameView.sendSubview(toBack: Pillar21)
        GameView.sendSubview(toBack: Pillar22)
        GameView.sendSubview(toBack: Pillar23)
        GameView.sendSubview(toBack: Pillar24)
        GameView.sendSubview(toBack: Pillar25)
        GameView.sendSubview(toBack: Pillar26)
        
    }
    
    func pillarPlacement(x:CGFloat, y:CGFloat) -> (CGPoint) {
        var PillarNewX: CGFloat
        var PillarNewY: CGFloat
        var random: Int = Int(arc4random() % 2)
        if random == 1 {
            // create pillar left
            PillarNewX = x + 39
            PillarNewY = y - 29
            if PillarNewX >= 319 {
                PillarNewX = x - 40
                PillarNewY = x - 30
            }
            
        } else {
            // create pillar right
            PillarNewX = x - 40
            PillarNewY = y - 30
            
            if PillarNewX <= 17 {
                PillarNewX = x + 39
                PillarNewY = x - 29
            }
        }
        var NewPillarCenter = CGPoint(x: PillarNewX, y: PillarNewY)
        return(NewPillarCenter)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

