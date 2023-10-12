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
                    .fill(.black)
                    .blendMode(.hue)

                Rectangle()
                    .fill(.gray)
                    .blendMode(.colorBurn)
                Rectangle()
                    .fill(.gray)
                    .blendMode(.colorDodge)
                Rectangle()
                    .fill(.gray)
                    .blendMode(.colorBurn)
                Rectangle()
                    .fill(.gray)
                    .blendMode(.colorDodge)
                Rectangle()
                    .fill(.gray)
                    .blendMode(.colorDodge)
                Rectangle()
                    .fill(.gray)
                    .blendMode(.colorDodge)
                Rectangle()
                    .fill(.gray)
                    .blendMode(.colorDodge)
                Rectangle()
                    .fill(.white)
                    .blendMode(.difference)
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

//
//struct ContentView: View {
//    @State private var amount = 0.0
//
//    var body: some View {
//        VStack {
//            ZStack {
//                Circle()
//                    .fill(.red)
//                    .frame(width: 200 * amount)
//                    .offset(x: -50, y: -80)
//                    .blendMode(.multiply)
//
//                Circle()
//                    .fill(.green)
//                    .frame(width: 200 * amount)
//                    .offset(x: 50, y: -80)
//                    .blendMode(.multiply)
//
//                Circle()
//                    .fill(.white)
//                    .frame(width: 200 * amount)
//
//                    .blendMode(.destinationOut)
//
//            }
//            .frame(width: 300, height: 300)
//
//            Slider(value: $amount)
//                .padding()
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(.yellow)
//        .ignoresSafeArea()
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

