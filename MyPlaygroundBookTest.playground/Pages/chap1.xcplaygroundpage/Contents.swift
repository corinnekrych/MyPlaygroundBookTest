import UIKit
import PlaygroundSupport

let view = DrawView(frame: CGRect(x: 0.0, y: 0.0, width: 300.0, height: 200.0))
view.backgroundColor = .white

PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = view
