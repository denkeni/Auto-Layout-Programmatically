import UIKit
import PlaygroundSupport

let view = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
PlaygroundPage.current.liveView = view
PlaygroundPage.current.needsIndefiniteExecution = true

var constraints = [NSLayoutConstraint]()

/*********************************
 * Auto Layout VFL: equalSpacing *
 *********************************/

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

let spacer1 = UIView()
let spacer2 = UIView()
spacer1.translatesAutoresizingMaskIntoConstraints = false
spacer2.translatesAutoresizingMaskIntoConstraints = false
view.addSubview(spacer1)
view.addSubview(spacer2)

//let spacer1 = UILayoutGuide()
//let spacer2 = UILayoutGuide()
//view.addLayoutGuide(spacer1)
//view.addLayoutGuide(spacer2)

let metrics = ["p": 15] // padding
let viewsDict = ["subview1": subview1, "subview2": subview2, "subview3": subview3, "spacer1": spacer1, "spacer2": spacer2]
constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-(p)-[subview1(100)]-[spacer1]-[subview2(120)]-[spacer2(==spacer1)]-[subview3(130)]-(p)-|", options: [], metrics: metrics, views: viewsDict)
constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-(p)-[subview1]-(p)-|", options: [], metrics: metrics, views: viewsDict)
constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-(p)-[subview2]-(p)-|", options: [], metrics: metrics, views: viewsDict)
constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-(p)-[subview3]-(p)-|", options: [], metrics: metrics, views: viewsDict)


/*****************************
 * UIStackView: equalSpacing *
 *****************************/

//let subview = UIStackView()
//subview.axis = .horizontal
//subview.alignment = .center
//subview.distribution = .equalSpacing
//
//let arrangedSubview1 = UIView()
//let arrangedSubview2 = UIView()
//let arrangedSubview3 = UIView()
//constraints.append(arrangedSubview1.widthAnchor.constraint(equalToConstant: 100.0))
//constraints.append(arrangedSubview2.widthAnchor.constraint(equalToConstant: 120.0))
//constraints.append(arrangedSubview3.widthAnchor.constraint(equalToConstant: 130.0))
//constraints.append(arrangedSubview1.heightAnchor.constraint(equalToConstant: 370.0))
//constraints.append(arrangedSubview2.heightAnchor.constraint(equalToConstant: 370.0))
//constraints.append(arrangedSubview3.heightAnchor.constraint(equalToConstant: 370.0))
//arrangedSubview1.backgroundColor = .lightGray
//arrangedSubview2.backgroundColor = .gray
//arrangedSubview3.backgroundColor = .darkGray
//
//subview.translatesAutoresizingMaskIntoConstraints = false
//arrangedSubview1.translatesAutoresizingMaskIntoConstraints = false
//arrangedSubview2.translatesAutoresizingMaskIntoConstraints = false
//arrangedSubview3.translatesAutoresizingMaskIntoConstraints = false
//
//view.addSubview(subview)
//subview.addArrangedSubview(arrangedSubview1)
//subview.addArrangedSubview(arrangedSubview2)
//subview.addArrangedSubview(arrangedSubview3)
//
//let metrics = ["p": 15] // padding
//let viewsDict = ["subview": subview]
//constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-(p)-[subview]-(p)-|", options: [], metrics: metrics, views: viewsDict)
//constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-(p)-[subview]-(p)-|", options: [], metrics: metrics, views: viewsDict)


NSLayoutConstraint.activate(constraints)	// 這些 constraint 必須 activate 才會啟用
