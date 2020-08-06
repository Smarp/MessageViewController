//
//  CancelView.swift
//  MessageViewController
//
//  Created by George kapoya on 6.8.2020.
//

import UIKit

public final class CancelView: UIView {

    internal let rightButton = UIButton()
    internal let leftLabel = UILabel()
    internal let stackView = UIStackView()

    internal override init(frame: CGRect) {
        super.init(frame: frame)

        rightButton.frame = CGRect(x: 0, y: 0, width: 150, height: 30)
        leftLabel.frame = CGRect(x: 0, y: 0, width: 150, height: 30)
        addSubview(stackView)
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public func setRightButton(title: String,tintColor: UIColor,action: Selector,font: UIFont, for state: UIControl.State) {
        rightButton.setTitle(title, for: state)
        rightButton.setTitleColor(tintColor, for: .normal)
        rightButton.contentHorizontalAlignment = .right
        rightButton.titleLabel?.font = font
        rightButton.addTarget(target, action: action, for: .touchUpInside)
        setNeedsLayout()
    }

    public func setLeftLabel(title: String,textColor: UIColor, font: UIFont) {
        leftLabel.text = title
        leftLabel.textColor = textColor
        leftLabel.font = font
        setNeedsLayout()
    }

    public func setStackView(frame: CGRect) {
        stackView.frame = frame
        stackView.backgroundColor = UIColor.green
        stackView.layoutMargins = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        stackView.distribution  = .fill
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.addArrangedSubview(leftLabel)
        stackView.addArrangedSubview(rightButton)
        setNeedsLayout()
    }

  

}
