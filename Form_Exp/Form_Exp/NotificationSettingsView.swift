//
//  NotificationSettingsView.swift
//  Form_Exp
//
//  Created by Shak Feizi on 8/4/22.
//

import SwiftUI

struct NotificationSettingsView: View {
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("")) {
                    HStack {
                        Text("Show Previews")
                        Spacer()
                        NavigationLink(destination: Text("")) {
                            Text("Always")
                                .foregroundColor(.gray)
                        }
                        .fixedSize()
                    }
                }
                Section(header: Text("Notification previews will be shown whether the iPhone is locked or unlocked"), footer: Text("Choose while apps can suggest shortcuts on the lock screen")) {
                    NavigationLink(destination: Text("")) {
                        Text("Siri Suggestions")
                    }
                }
                Section(header: Text("Notification style")) {
                    ForEach(1..<11) { index in
                        Text("Notification \(index)")
                    }
                }
            }
            .ignoresSafeArea(.all)
        }
    }
}

struct NotificationSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationSettingsView()
    }
}
