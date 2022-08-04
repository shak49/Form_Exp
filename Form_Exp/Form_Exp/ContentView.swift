//
//  ContentView.swift
//  Form_Exp
//
//  Created by Shak Feizi on 8/3/22.
//

import SwiftUI

struct ContentView: View {
    @State private var scheduled: Bool = false
    @State private var manuallyEnabledTillTomorrow: Bool = false
    @State private var colorTempreture: CGFloat = 0.5
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Night shift automatically shifts the colors of display to warmer end of the color spectrum after dark. This is may help you get a better night's sleep.").padding(5).lineLimit(nil)) {
                    Toggle(isOn: $scheduled) {
                        Text("Scheduled")
                    }
                    HStack {
                        VStack {
                            Text("Form")
                            Text("To")
                        }
                        Spacer()
                        NavigationLink(destination: Text("")) {
                            VStack {
                                Text("Sunset")
                                    .foregroundColor(.blue)
                                Text("Sunrise")
                                    .foregroundColor(.blue)
                            }
                        }
                        .fixedSize()
                    }
                }
                Section() {
                    Toggle(isOn: $manuallyEnabledTillTomorrow) {
                        Text("Manually Enable Until Tomorrow")
                    }
                }
                Section(header: Text("Color Tempreture").padding()) {
                    HStack {
                        Text("Less Warm")
                        Slider(value: $colorTempreture)
                        Text("More Warm")
                    }
                }
            }
            .listStyle(.plain)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
