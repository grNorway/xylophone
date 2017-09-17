//
//  ViewController.swift
//  Xylophone
//
//  Created by Panagiotis Siapkaras on 9/10/17.
//  Copyright © 2017 Panagiotis Siapkaras. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    
 
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        var selectedSoundFileName = soundArray[sender.tag - 1]
        playSound(forFile: selectedSoundFileName)
    }
    
    func playSound(forFile file: String){
        
        let soundURL = Bundle.main.url(forResource: file, withExtension: "wav")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }catch{
            print("Error : \(error.localizedDescription)")
        }
        
        audioPlayer.play()

        
    }
    
  

}

