import UIKit
import PlaygroundSupport

// setFrame

let view = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
PlaygroundPage.current.liveView = view
PlaygroundPage.current.needsIndefiniteExecution = true

let subview = UIView()
subview.frame = CGRect(x: 100, y: 150, width: 200, height: 100)
subview.backgroundColor = .white
view.addSubview(subview)


/// Auto Layout constraint

var constraints = [NSLayoutConstraint]()

//let subviewA = UIView()
//subviewA.backgroundColor = .red
//subviewA.translatesAutoresizingMaskIntoConstraints = false  // 這是純程式碼寫 Auto Layout 的大雷：必須設定這一行！
//view.addSubview(subviewA)

//constraints.append(NSLayoutConstraint(item: subviewA, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0)) // subviewA.centerX = 1.0 * view.centerX + 0 即 subviewA.centerX = view.centerX
//constraints.append(NSLayoutConstraint(item: subviewA, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0)) // subviewA.centerY = 1.0 * view.centerY + 0 即 subviewA.centerY = view.centerY
//constraints.append(NSLayoutConstraint(item: subviewA, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 200))  // subviewA.width = 0 * nil + 200.0 即 subviewA.width = 200
//constraints.append(NSLayoutConstraint(item: subviewA, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 100))  // subviewA.centerX = 0 * nil + 100.0 即 subviewA.height = 100


//let subviewB = UIView()
//subviewB.backgroundColor = .blue
//subviewB.translatesAutoresizingMaskIntoConstraints = false
//view.addSubview(subviewB)
//constraints.append(NSLayoutConstraint(item: subviewB, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 150)) // subviewA.top = 1.0 * view.top + 150
//constraints.append(NSLayoutConstraint(item: subviewB, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -150)) // subviewA.bottom = 1.0 * view.bottom - 150
//constraints.append(NSLayoutConstraint(item: subviewB, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1.0, constant: 100))  // subviewA.left = 1.0 * view.left + 100
//constraints.append(NSLayoutConstraint(item: subviewB, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1.0, constant: -100))  // subviewA.right = 1.0 * view.right - 100


//let subviewC = UIView()
//subviewC.backgroundColor = .green
//subviewC.translatesAutoresizingMaskIntoConstraints = false
//view.addSubview(subviewC)
//constraints.append(subviewC.centerXAnchor.constraint(equalTo: view.centerXAnchor))
//constraints.append(subviewC.centerYAnchor.constraint(equalTo: view.centerYAnchor))
//constraints.append(subviewC.widthAnchor.constraint(equalToConstant: 200))
//constraints.append(subviewC.heightAnchor.constraint(equalToConstant: 100))

NSLayoutConstraint.activate(constraints)	// 這些 constraint 必須 activate 才會啟用
