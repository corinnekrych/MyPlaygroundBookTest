import UIKit

public class DrawView: UIView {
    public var path = UIBezierPath()
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        path = UIBezierPath(); path.lineWidth = 2
        guard let touch = touches.first else {return}
        path.move(to: touch.location(in: self))
        setNeedsDisplay()
    }
    
    override public  func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {return}
        path.addLine(to: touch.location(in: self))
        setNeedsDisplay()
    }
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {return}
        path.addLine(to: touch.location(in: self))
        setNeedsDisplay()
    }
    
    override public func draw(_ rect: CGRect) {
        UIColor.black.set(); path.stroke()
    }
}
