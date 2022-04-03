//
//  ViewController.swift
//  AnimationSpringCocoa
//
//  Created by Вячеслав Квашнин on 02.04.2022.
//

import UIKit
import Spring

class AnimationViewController: UIViewController {
    
    @IBOutlet weak var springAnimationView: SpringView!

    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    private var animationEffect = AnimationEffect.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationLabel.text = springAnimationView.animation
        curveLabel.text = springAnimationView.curve
        
    }
    
    @IBAction func springAnimationButton(_ sender: UIButton) {
        
        animationLabel.text = springAnimationView.animation
        curveLabel.text = springAnimationView.curve
        
        springAnimationView.animation = animationEffect.animation
        springAnimationView.curve = animationEffect.curve
        springAnimationView.duration = CGFloat(animationEffect.duration)
        springAnimationView.force = CGFloat(animationEffect.force)
        springAnimationView.delay = CGFloat(animationEffect.delay)
        springAnimationView.animate()
        
        animationEffect = AnimationEffect.getAnimation()
        
        sender.setTitle(springAnimationView.animation, for: .normal)
    }
}
