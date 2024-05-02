import UIKit

// Find a common parent from two UIView

func find(_ view1: UIView, _ view2: UIView) -> UIView? {
    var parentsOfView1: [UIView] = []  // List of parent UIView for view1
    
    var parent: UIView? = view1.superview
    while let currentParent = parent {
        parentsOfView1.append(currentParent)
        parent = currentParent.superview
    }
    
    // Check if the parent UIView from the list is contained in the view2 hierarchy
    parent = view2.superview
    while let currentParent = parent {
        if parentsOfView1.contains(currentParent) {
            return currentParent  // Return the common parent if found
        }
        parent = currentParent.superview
    }
    
    return nil
}
