//
//  EducationInformationCell.swift
//  Peek Beta
//
//  Created by Jacorey Brown on 3/28/19.
//  Copyright © 2019 Jacorey Brown. All rights reserved.
//

import UIKit

class EducationInformationCell : UICollectionViewCell {
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupStackView()
    }
    
    let school = UILabel(text: "The University of Texas at Austin", font: .systemFont(ofSize: 16), numberOfLines: 1)
    let degreeType = UILabel(text: "Bachelor of Science - BS, Biology", font: .systemFont(ofSize: 12, weight: .ultraLight), numberOfLines: 1)
    let duration = UILabel(text: "Graduated 2019", font: .systemFont(ofSize: 12, weight: .ultraLight), numberOfLines: 1)
    let summary = UILabel(text: "Oh lord tell me, do we get what we deserve. Do we get what we deserve. Oh way down, we go go go go go go go go go go go go go go", font: .systemFont(ofSize: 12, weight: .thin), numberOfLines: 0)
    let editButton = UIButton(image: #imageLiteral(resourceName: "edit"), color: UIColor.rgb(red: 136, green: 206, blue: 235))
    let blankImageView = UIImageView(cornerRadius: 16)
    
    
    func setupStackView() {
        let stackView = VerticalStackView(arrangedSubviews: [
            school,
            UIStackView(arrangedSubviews: [
                degreeType,
                editButton
                ], customSpacing: 0),
            duration,
            summary,
            blankImageView
            ], spacing: 8)
        addSubview(stackView)
        blankImageView.constrainHeight(constant: 5)
        customizeEditButton()
        stackView.fillSuperview(padding: UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20))
    }
    
    func customizeEditButton() {
        editButton.constrainWidth(constant: 12)
        editButton.constrainHeight(constant: 12)
        editButton.addTarget(self, action: #selector(edit), for: .touchUpInside)
    }
    
    @objc func edit() {
        print("edit button is pressed")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
