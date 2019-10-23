//
//  Checkbox.swift
//  
//
//  Created by XIABIN on 2019/10/23.
//

import SwiftUI

public struct Checkbox {
    @Binding public var checked: Bool
    public var checkedImage: String
    public var uncheckedImage: String
    public var valueChanged: (() -> Void)?
    public var body: some View {
        Image(checked ? checkedImage : uncheckedImage)
            .onTapGesture {
                self.checked.toggle()
                self.valueChanged?()
        }
    }
}
