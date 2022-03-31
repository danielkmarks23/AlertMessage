//
//  ExampleView.swift
//  AlertMessage
//
//  Created by Daniel Marks on 31/03/2022.
//

import SwiftUI
import AlertMessage

struct ExampleView: View {
    
    @State var isBannerActive = false
    @State var isCenteredActive = false
    @State var isSnackbarActive = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Button("Banner") {
                    isBannerActive.toggle()
                }
                
                Spacer()
                
                Button("Centered") {
                    isCenteredActive.toggle()
                }
                
                Spacer()
                
                Button("Snackbar") {
                    isSnackbarActive.toggle()
                }
                
                Spacer()
            }
            .navigationTitle("Alert Messages")
            .navigationBarTitleDisplayMode(.inline)
            .alertMessage(isPresented: $isCenteredActive, type: .centered, autoHideIn: nil, dragToDismiss: false, closeOnTap: true) {
                // Center Dismissed
            } view: {
                Message() {
                    // Center Tapped
                }
            }
            .alertMessage(isPresented: $isSnackbarActive, type: .snackbar, autoHideIn: 3.0, dragToDismiss: true, closeOnTap: false) {
                // Snackbar Dismissed
            } view: {
                Message()
            }
        }
        .alertMessage(isPresented: $isBannerActive, type: .banner, animation: .easeInOut, autoHideIn: 3.0, dragToDismiss: true, closeOnTap: true) {
            // Banner Dismissed
        } view: {
            Message() {
                // Banner Tapped")
            }
        }
    }
    
    @ViewBuilder
    func message() -> some View {
        HStack {
            Image(systemName: "checkmark.seal")
                .resizable()
                .frame(width: 35, height: 35)
                .foregroundColor(.white)
                .padding()
            
            Text("Success!")
                .foregroundColor(.white)
            
            Spacer()
        }
        .background(Color.green)
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
