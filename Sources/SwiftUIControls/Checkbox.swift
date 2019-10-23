//
//  Checkbox.swift
//  
//
//  Created by XIABIN on 2019/10/23.
//

import SwiftUI

public struct CheckboxImage {
    var checked: String
    var unchecked: String
}

public struct Checkbox: View {
    @Binding var checked: Bool
    var images: CheckboxImage?
    var valueChanged: (() -> Void)
    
    public init(checked:Binding<Bool>, images: CheckboxImage? = nil, valueChanged: @escaping () -> Void = {}) {
        self._checked = checked
        self.valueChanged = valueChanged
    }
    
    public var body: some View {
        ZStack {
            if images != nil  {
                Image(checked ? images!.checked : images!.unchecked)
            } else {
                ZStack {
                    if !checked {
                        Circle()
                            .stroke(Color(white: 153.0/255.0), lineWidth: 2)
                    } else {
                        Image(systemName: "checkmark.circle.fill")
                            .font(.system(size: 26))
                            .foregroundColor(.red)
                    }
                }
                .padding(5)
                .frame(width: 30, height: 30)
            }
        }
        .onTapGesture {
            self.checked.toggle()
            self.valueChanged()
        }
    }
}
