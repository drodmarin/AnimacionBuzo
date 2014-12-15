//
//  GameScene.swift
//  SKswift
//
//  Created by Berganza on 09/12/2014.
//  Copyright (c) 2014 Berganza. All rights reserved.
//

import SpriteKit

var buzo = SKSpriteNode(imageNamed: "Buceador1")
var left = false

class GameScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        
        backgroundColor = UIColor.cyanColor()
        
        
        
        buzo.position = CGPointMake(800, 200)
        self.addChild(buzo)
        
        var atlasBuzo = SKTextureAtlas(named: "nadar")
        var b1 = atlasBuzo.textureNamed("Buceador1")
        var b2 = atlasBuzo.textureNamed("Buceador2")
        var b3 = atlasBuzo.textureNamed("Buceador3")
        var b4 = atlasBuzo.textureNamed("Buceador4")
        var b5 = atlasBuzo.textureNamed("Buceador5")
        var b6 = atlasBuzo.textureNamed("Buceador6")
        
        var arrayBuzo = [b1,b2,b3, b4, b5, b6]
        
        var nadar = SKAction.animateWithTextures(arrayBuzo, timePerFrame: 0.2)
        nadar = SKAction.repeatActionForever(nadar)
        
        buzo.runAction(nadar)
        
        
        
        
        
        
//        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
//        
//        myLabel.text = "Hello, World!";
//        myLabel.fontSize = 65;
//        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
//        
//        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        var position:CGFloat
        var moveGroundAction: SKAction!
        
        for touch: AnyObject in touches {
            
            if (left)
            {
                position = 600
                moveGroundAction = SKAction.moveByX(position, y: 0, duration: 0.5)
                left = false
            }
            else
            {
                position = 600
                moveGroundAction = SKAction.moveByX(-position, y: 0, duration: 0.5)
                left = true
            }
            
            buzo.runAction(moveGroundAction)
            
            
//            let location = touch.locationInNode(self)
//            
//            let sprite = SKSpriteNode(imageNamed:"Spaceship")
//            
//            sprite.xScale = 0.5
//            sprite.yScale = 0.5
//            sprite.position = location
//            
//            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
//            
//            sprite.runAction(SKAction.repeatActionForever(action))
//            
//            self.addChild(sprite)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
