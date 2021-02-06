//
//  ContentView.swift
//  Video
//
//  Created by Tung Lam Chan on 4/2/2021.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
            Button("Invoke C") {
                printHello()
                
                switch AVCaptureDevice.authorizationStatus(for: .audio) {
                    case .authorized: // The user has previously granted access to the camera.
                        ffmpegTest()
                    
                    case .notDetermined: // The user has not yet been asked for camera access.
                        AVCaptureDevice.requestAccess(for: .audio) { granted in
                            if granted {
                                ffmpegTest()
                            }
                        }
                    
                    case .denied: // The user has previously denied access.
                        return

                    case .restricted: // The user can't grant access due to restrictions.
                        return
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
