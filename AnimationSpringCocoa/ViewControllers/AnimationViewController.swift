//
//  ViewController.swift
//  AnimationSpringCocoa
//
//  Created by Вячеслав Квашнин on 02.04.2022.
//

import Spring

class AnimationViewController: UIViewController {
    
    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var animationLabel: UILabel!
    
    private var animationEffect = AnimationEffect.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animationEffect.description
        
    }
    
    @IBAction func springAnimationButton(_ sender: UIButton) {
        
        springAnimationView.animation = animationEffect.animation
        springAnimationView.curve = animationEffect.curve
        springAnimationView.duration = CGFloat(animationEffect.duration)
        springAnimationView.force = CGFloat(animationEffect.force)
        springAnimationView.delay = CGFloat(animationEffect.delay)
        springAnimationView.animate()
        
        animationLabel.text = animationEffect.description
        
        animationEffect = AnimationEffect.getAnimation()
        
        sender.setTitle(animationEffect.animation, for: .normal)
    }
}
