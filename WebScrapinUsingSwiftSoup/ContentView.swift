//
//  ContentView.swift
//  WebScrapinUsingSwiftSoup
//
//  Created by ramil on 28.02.2022.
//

import SwiftUI
import SwiftSoup

struct ContentView: View {
    var body: some View {
        Button("Run SwiftSoup", action: {
            let html = "<html><head><title>First parse</title></head><body><p>Parse HTML into doc</p></body</html>"
            
            do {
                let document: Document = try SwiftSoup.parse(html)
                return try print(document.text())
            } catch {
                print(error.localizedDescription)
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
