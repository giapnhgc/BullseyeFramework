//
//  BullseyeContent.swift
//  BullseyeFramework
//
//  Created by Nguyen Hoang Giap on 1/15/20.
//  Copyright © 2020 Nguyen Hoang Giap. All rights reserved.
//

import SwiftUI

public struct BullseyeContent: View {
//    associatedtype Body : View
//    var body: Self.Body { get }
    
    @State public var alertIsVisible = false
    @State public var sliderValue = 50.0
    @State public var target = Int.random(in: 1...100)
    
    public init(){}
    
    public var body: some View {
        VStack {
            //            Target row
            HStack {
                Text("Kéo mắt bò vào điểm:")
                Text("\(target)")
            }
            .padding(.bottom, 50)
            
            //            Slider row
            HStack{
                Text("1")
                Slider(value: $sliderValue, in: 1...100)
                Text("100")
            }
            
            //            Button row
            Button(action: {
                print("button pressed")
                self.alertIsVisible = true
            }) {
                Text("Hit me from the Brand new Framework!!!")
            }
            .alert(isPresented: $alertIsVisible) {() -> Alert in
                //                let roundedValue = Int(sliderValue.rounded())
                return Alert(
                    title: Text("Hello there!"),
                    message: Text(
                        "The slider value is: \(sliderValueRounded()).\n" +
                        "Your scored \(pointsForCurrentRound()) points this round."),
                    dismissButton: .default(Text("Awesome!"))
                )
            }
            .padding(.bottom, 80)
            
            //            Score row
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Start Over")
                }
                Spacer()
                Text("Score:")
                Text("999999")
                Spacer()
                Text("Round:")
                Text("999")
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Info")
                }
            }
            .padding(.bottom, 20)
        }
    }
    
    public func sliderValueRounded() -> Int {
        Int(sliderValue.rounded())
    }
    
    public func pointsForCurrentRound() -> Int {
        100 - abs(target - sliderValueRounded())
    }
    
}

public struct BullseyeContent_Previews: PreviewProvider {
    public static var previews: some View {
        BullseyeContent().previewLayout(.fixed(width: 896, height: 414))
    }
}
