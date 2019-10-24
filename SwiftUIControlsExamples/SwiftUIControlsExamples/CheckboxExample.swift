//
//  CheckboxExample.swift
//  SwiftUIControlsExamples
//
//  Created by XIABIN on 2019/10/23.
//  Copyright © 2019 alibaba. All rights reserved.
//

import SwiftUI

struct CheckboxExample: View {
    @State var checkState = false
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
                Checkbox(checked: $checkState, images: nil) {
                    print("Checkbox state: \(self.checkState ? "checked" : "unchecked")")
                }
                Text(self.checkState ? "checked" : "unchecked")
            }
            HStack {
                Checkbox(checked: $checkState, images: CheckboxImage(checked: "check_checked", unchecked: "check_unchecked")) {
                    
                }
                .padding(5)
                Text(self.checkState ? "checked" : "unchecked")
            }
        }
        .navigationBarTitle("Checkbox", displayMode: .inline)
    }
}

struct CheckboxExample_Previews: PreviewProvider {
    static var previews: some View {
        CheckboxExample()
    }
}
