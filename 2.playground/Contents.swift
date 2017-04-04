import UIKit
import PlaygroundSupport

/************
 * setFrame *
 ************/

let view = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
PlaygroundPage.current.liveView = view
PlaygroundPage.current.needsIndefiniteExecution = true

//let subview = UIView()
//subview.frame = CGRect(x: 100, y: 150, width: 200, height: 100)
//subview.backgroundColor = .white
//view.addSubview(subview)


/*******************
 * Auto Layout VFL *
 *******************/

var constraints = [NSLayoutConstraint]()

let subviewB = UIView()
subviewB.backgroundColor = .green
subviewB.translatesAutoresizingMaskIntoConstraints = false
view.addSubview(subviewB)

let viewsDictB = ["subviewB": subviewB]
constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-(150)-[subviewB]-(150)-|", options: [], metrics: nil, views: viewsDictB)
// V: Vertical
constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-(100)-[subviewB]-(100)-|", options: [], metrics: nil, views: viewsDictB)
// H: Horizontal

//let metrics = ["v": 150, "h": 100]
//let viewsDictB = ["subview": subviewB]
//constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-(v)-[subview]-(v)-|", options: [], metrics: metrics, views: viewsDictB)
//constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-(h)-[subview]-(h)-|", options: [], metrics: metrics, views: viewsDictB)



//let subviewA = UIView()
//subviewA.backgroundColor = .red
//subviewA.translatesAutoresizingMaskIntoConstraints = false
//view.addSubview(subviewA)
//let viewsDictA = ["subviewA": subviewA]
//constraints.append(subviewA.centerXAnchor.constraint(equalTo: view.centerXAnchor))
//constraints.append(subviewA.centerYAnchor.constraint(equalTo: view.centerYAnchor))
//// width
//constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:[subviewA(200)]", options: [], metrics: nil, views: viewsDictA)
//// height
//constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[subviewA(100)]", options: [], metrics: nil, views: viewsDictA)



/*****************************************
 * Auto Layout VFL: more complex example *
 *****************************************/

let subview1 = UIView()
let subview2 = UIView()
let subview3 = UIView()
subview1.backgroundColor = .lightGray
subview2.backgroundColor = .gray
subview3.backgroundColor = .darkGray
subview1.translatesAutoresizingMaskIntoConstraints = false
subview2.translatesAutoresizingMaskIntoConstraints = false
subview3.translatesAutoresizingMaskIntoConstraints = false
view.addSubview(subview1)
view.addSubview(subview2)
view.addSubview(subview3)

//let metrics = ["p": 15] // padding
//let viewsDict = ["subview1": subview1, "subview2": subview2, "subview3": subview3]
//constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-(p)-[subview1(100)]-(10)-[subview2(120)]-(10)-[subview3]-(p)-|", options: [], metrics: metrics, views: viewsDict)
//constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-(p)-[subview1]-(p)-|", options: [], metrics: metrics, views: viewsDict)
//constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-(p)-[subview2]-(p)-|", options: [], metrics: metrics, views: viewsDict)
//constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-(p)-[subview3]-(p)-|", options: [], metrics: metrics, views: viewsDict)



/**************************************************
 * Auto Layout VFL: NSLayoutFormatOptions example *
 **************************************************/

//constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-(15)-[subview1(100)]-(10)-[subview2(120)]-(10)-[subview3]-(15)-|", options: .alignAllTop, metrics: nil, views: viewsDict)
//constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[subview1(300)]", options: [], metrics: nil, views: viewsDict)
//
//constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[subview2(200)]", options: [], metrics: nil, views: viewsDict)
//
//constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[subview3(150)]", options: [], metrics: nil, views: viewsDict)


NSLayoutConstraint.activate(constraints)	// 這些 constraint 必須 activate 才會啟用
