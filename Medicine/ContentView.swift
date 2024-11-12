//
//  ContentView.swift
//  Medicine
//
//  Created by デジタルヘルス on 2024/11/08.
//

import SwiftUI

struct ContentView: View {
    @State private var medicines: [Medicine] = []

    var body: some View {
        List(medicines) { medicine in
            Text(medicine.name)
            Text(medicine.purpose)
        }
        .task {
            guard
                let url = Bundle.main.url(forResource: "medicines", withExtension: "json"),
                let data = try? Data(contentsOf: url)
            else {
                return
            }
            medicines = (try? JSONDecoder().decode([Medicine].self, from: data)) ?? []
        }
    }
}

#Preview {
    ContentView()
}
