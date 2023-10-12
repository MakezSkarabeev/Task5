//
//  ContentView.swift
//  iOSCourse
//
//  Created by Sivenkov maxim  on 01.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var position = CGPoint(x: 200, y: 100)
    private var rectSize: CGFloat = 350

    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .foregroundColor(.white)
            Rectangle()
                .foregroundColor(.pink)
            Rectangle()
                .foregroundColor(.yellow)
            Rectangle()
                .foregroundColor(.black)
        }
        .ignoresSafeArea()
        .overlay() {
            ZStack {
                Rectangle()
                    .fill(.white)
                    .blendMode(.difference)
                    .overlay(
                        Rectangle()
                            .blendMode(.hue)
                    )
                    .overlay(
                        Rectangle()
                            .fill(.white)
                            .blendMode(.overlay)
                    )
                    .overlay(
                        Rectangle()
                            .fill(.black)
                            .blendMode(.overlay)
                    )
            }
            .cornerRadius(10)
            .frame(width: 100, height: 100)
            .position(position)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        self.position = CGPoint(
                            x: value.location.x,
                            y: value.location.y
                        )
                    }
            )

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

