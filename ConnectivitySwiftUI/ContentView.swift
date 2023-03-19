//
//  ContentView.swift
//  ConnectivitySwiftUI
//
//  Created by Admin on 19/03/2023.
//

import SwiftUI

struct ContentView: View {
    var model = ViewModelPhone()
    @State var reachable = "No"
    @State var messageText = ""
    var body: some View {
        VStack{
            Text("Reachable \(reachable)")
            
            Button(action: {
                if self.model.session.isReachable{
                    self.reachable = "Yes"
                }
                else{
                    self.reachable = "No"
                }
                
            }) {
                Text("Update")
            }
            TextField("Input your message", text: $messageText)
            Button(action: {
                self.model.session.sendMessage(["message" : self.messageText], replyHandler: nil) { (error) in
                    print(error.localizedDescription)
                }
            }) {
            Text("Send Message")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
