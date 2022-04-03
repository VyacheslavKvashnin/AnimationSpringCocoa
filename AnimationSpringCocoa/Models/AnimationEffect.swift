//
//  AnimationEffect.swift
//  AnimationSpringCocoa
//
//  Created by Вячеслав Квашнин on 02.04.2022.
//

import Spring

struct AnimationEffect {
    
    let animation: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    static func getAnimation() -> AnimationEffect {
        
        AnimationEffect(
            animation: SpringAnimationManager.shared.animations.randomElement() ?? "",
            curve: SpringAnimationManager.shared.curves.randomElement() ?? "",
            force: .random(in: 0...1),
            duration: .random(in: 0...1),
            delay: .random(in: 0...1))
        
    }
}


