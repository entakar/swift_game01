import SpriteKit
import GameplayKit
import Foundation

class SpaceShip{
    var entities = [GKEntity]()
    var graphs = [String : GKGraph]()
    
    private var lastUpdateTime : TimeInterval = 0

    private var spinnyNode : SKShapeNode?
    
    var obj: SKSpriteNode!
    var missile: SKSpriteNode!
    
    init(){
        self.obj = SKSpriteNode(imageNamed: "spaceship")
        obj.name = "myship"
        obj.position = CGPoint(x: 0, y: -300)
        obj.scale(to: CGSize(width: 100, height: 100))
    }
 
    func ShotInit(){
        self.missile = SKSpriteNode(imageNamed: "spaceship")
        missile.scale(to: CGSize(width: 10, height: 30))
        missile.position = CGPoint(x: obj.position.x, y: obj.position.y + 80)
    }
}
