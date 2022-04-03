//
//  SpringAnimation.swift
//  AnimationSpringCocoa
//
//  Created by Вячеслав Квашнин on 03.04.2022.
//

class SpringAnimationManager {
    
    static let shared = SpringAnimationManager()
    
    let animations = [
        "shake", "pop", "morph", "squeeze", "wobble", "swing", "flipX",
        "flipY", "fall", "squeezeLeft", "squeezeRight","squeezeDown",
        "squeezeUp", "slideLeft", "slideRight", "slideDown", "slideUp",
        "fadeIn", "fadeOut", "fadeInLeft", "fadeInRight", "fadeInDown",
        "fadeInUp", "zoomIn", "zoomOut", "flash"
    ]
    
    let curves = [
        "spring", "linear",
        "easeIn", "easeOut",
        "easeInOut"
    ]
    
    private init() {}
}
