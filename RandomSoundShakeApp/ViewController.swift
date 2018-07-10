//
//  ViewController.swift
//  RandomSoundShakeApp
//
//  Created by Filip on 10.07.2018.
//  Copyright © 2018 Filip. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        if event?.subtype == UIEventSubtype.motionShake {
            
            let soundsArray = ["bomb", "splash" , "cow", "fart", "kat", "dog"]
            let random = Int(arc4random_uniform(UInt32(soundsArray.count)))
            
            let fileToPlay = Bundle.main.path(forResource: soundsArray[random], ofType: "mp3")
            
            do {
                
                //try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: fileToPlay!))
                //player.play()
                print(soundsArray[random]) // Testing without sounds
                
            } catch {
            
                print(error)
            
            }
            
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

