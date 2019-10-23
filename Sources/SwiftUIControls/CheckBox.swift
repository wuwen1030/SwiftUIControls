//
//  Checkbox.swift
//  
//
//  Created by XIABIN on 2019/10/23.
//

import SwiftUI

public struct Checkbox: View {
    @Binding var checked: Bool
    var checkedImage: String
    var uncheckedImage: String
    var valueChanged: (() -> Void)?
    public var body: some View {
        Image(checked ? checkedImage : uncheckedImage)
            .onTapGesture {
                self.checked.toggle()
                self.valueChanged?()
        }
    }
}
//
//struct Checkbox_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            Checkbox(checked: .constant(true))
//                .previewLayout(.fixed(width: 40, height: 40))
//            Checkbox(checked: .constant(false))
//                .previewLayout(.fixed(width: 40, height: 40))
//        }
//    }
//}

