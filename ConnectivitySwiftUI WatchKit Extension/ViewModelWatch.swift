//
//  ViewModelWatch.swift
//  ConnectivitySwiftUI WatchKit Extension
//
//  Created by Admin on 19/03/2023.
//
import Foundation
import WatchConnectivity

class ViewModelWatch : NSObject,  WCSessionDelegate, ObservableObject{
    var session: WCSession
    @Published var messageText = ""
    init(session: WCSession = .default){
        self.session = session
        super.init()
        self.session.delegate = self
        session.activate()
    }
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        DispatchQueue.main.async {
            self.messageText = message["message"] as? String ?? "Unknown"
        }
    }
    
}
