//
//  ContentView.swift
//  SwiftUIControlsExamples
//
//  Created by XIABIN on 2019/10/23.
//  Copyright © 2019 alibaba. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: CheckboxExample()) {
                    Text("Checkbox")
                }
            }
            .navigationBarTitle("Examples")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
