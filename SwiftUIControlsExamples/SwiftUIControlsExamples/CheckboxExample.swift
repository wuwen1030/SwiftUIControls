//
//  CheckboxExample.swift
//  SwiftUIControlsExamples
//
//  Created by XIABIN on 2019/10/23.
//  Copyright © 2019 alibaba. All rights reserved.
//

import SwiftUI

struct CheckboxExample: View {
    @State var checked = false
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Checkbox(checked: .constant(false))
                Text("unchecked")
            }
            HStack {
                Checkbox(checked: .constant(true))
                Text("checked")
            }
            HStack {
                Checkbox(checked: $checked, images: nil) {
                    print("Checkbox state: \(self.checked ? "checked" : "unchecked")")
                }
                Text(self.checked ? "checked" : "unchecked")
            }
        }
    }
}

struct CheckboxExample_Previews: PreviewProvider {
    static var previews: some View {
        CheckboxExample()
    }
}
