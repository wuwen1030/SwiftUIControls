//
//  Checkbox.swift
//  
//
//  Created by XIABIN on 2019/10/23.
//

import SwiftUI

public struct Checkbox: View {
    @Binding public var checked: Bool
    public var checkedImage: String
    public var uncheckedImage: String
    public var valueChanged: (() -> Void)?
    
    public init(checked:Binding<Bool>, checkedImage: String, uncheckedImage: String) {
        self._checked = checked
        self.checkedImage = checkedImage
        self.uncheckedImage = uncheckedImage
    }
    
    public var body: some View {
        Image(checked ? checkedImage : uncheckedImage)
            .onTapGesture {
                self.checked.toggle()
                self.valueChanged?()
        }
    }
}
