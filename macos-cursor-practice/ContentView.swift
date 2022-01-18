//
//  ContentView.swift
//  macos-cursor-practice
//
//  Created by soudegesu on 2022/01/18.
//

import SwiftUI
import AppKit

struct ContentView: View {
  
  @State var iconShouldBeChanged = false
  
    var body: some View {
      VStack {
        Button("change icon") {
          iconShouldBeChanged.toggle()
          NSCursor.closedHand.set()
        }.frame(width: 120, height: 40, alignment: .center)
      }.frame(width: 640, height: 480, alignment: .center)
      .whenHovered({ isInside in
        if(isInside && iconShouldBeChanged) {
          NSCursor.closedHand.set()
        } else {
          NSCursor.arrow.set()
        }
      })
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
