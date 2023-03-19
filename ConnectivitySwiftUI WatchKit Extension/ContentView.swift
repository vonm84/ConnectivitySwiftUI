//
//  ContentView.swift
//  ConnectivitySwiftUI WatchKit Extension
//
//  Created by Admin on 19/03/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = ViewModelWatch()
    var body: some View {
        Text(self.model.messageText)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

