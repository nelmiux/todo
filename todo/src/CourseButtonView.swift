//
//  CourseButtonView.swift
//  todo
//
//  Created by Quyen Castellanos on 3/23/16.
//  Copyright © 2016 cs378. All rights reserved.
//

import UIKit

class CourseButtonView: UIView {
    
    private var parentViewController:RegistrationViewController? = nil
    private var courseLabel: UILabel = UILabel()
    private var removeButton:UIButton = UIButton()
    private var course:String = ""
    
    override init(frame: CGRect) {
        super.init(frame:frame)
    }
    
    convenience init (frame:CGRect, course:String, parentViewController:RegistrationViewController) {
        self.init(frame: frame)
        self.parentViewController = parentViewController
        
        // Parse the course string and get only the course number
        self.course = course
        let courseArr = course.characters.split{$0 == " "}.map(String.init)
        let courseNumber = courseArr[0].substringToIndex(courseArr[0].endIndex.predecessor())
        
        // Create the course label
        self.courseLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        self.courseLabel.backgroundColor = UIColor.redColor()
        self.courseLabel.textColor = UIColor.whiteColor()
        self.courseLabel.text = courseNumber
        
        // Create the remove button and attach to the course label
        self.removeButton = UIButton(frame: CGRect(x: self.courseLabel.frame.origin.x + self.courseLabel.frame.width - 25, y: self.courseLabel.frame.origin.y + 3, width: 25, height: 25))
        self.removeButton.setTitle("X", forState: UIControlState.Normal)
        self.courseLabel.addSubview(self.removeButton)
        
        // Finally, add the label to the view controller
        self.addSubview(self.courseLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func show () {
        self.parentViewController?.mainView.addSubview(self)
        self.parentViewController?.updateRefFrame(self.frame)
    }
}
