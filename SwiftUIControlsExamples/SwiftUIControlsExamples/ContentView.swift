//
//  ContentView.swift
//  SwiftUIControlsExamples
//
//  Created by XIABIN on 2019/10/23.
//  Copyright © 2019 alibaba. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let items = ["Checkbox"]
    var body: some View {
        NavigationView {
            List {
                ForEach(items, id: \.self) { item in
                    NavigationLink(destination: CheckboxExample()) {
                        Text(item)
                    }
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
