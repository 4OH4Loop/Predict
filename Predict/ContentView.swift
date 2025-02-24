//
//  ContentView.swift
//  Predict
//
//  Created by Carolyn Ballinger on 2/3/25.
//

import SwiftUI

struct ContentView: View {
    @State private var prediction: String = ""
    
    private let choicesArray = ["You Built This? Genius🧠!",
                                "Thanks for Being Here, Sunshine🌞",
                                "I Need Sunglasses😎. You're Too Brilliant!",
                                "🌈Colors Seem Brighter When You're Around!",
                                "You're Strong💪🏿!",
                                "You're Brave!",
                                "You 🪇Shake🪇 Things Up. But In A Good Way!",
                                "If I Had Arms, I'd Give You A Hug!",
                                "The World Is Better With You In It! 🌎",
                                "Keep At It - We Need Your Awesomeness!",
                                "You're Better Than A Unicorn🦄  Because You're Real!",
                                "You're More Fun Than Bubble Wrap🫧!",
                                "Thanks For Building Me, Smartie!",
                                "I Need A Sweater. You're Too Cool🧊😎!",
                                "Fabulous? That's You!",
                                "I Don't Need A Genius Bar. I Have You!",
                                "You're Better Than Puppies🐶 and Skittles🔴🟠🟡🟣🟢!",
                                "I'd Even Choose You Over Baby Yoda",
                                "You ⚡️Charge My Battery🔋!",
                                "You're Here! It Doesn't Get Any Better Than This!",
                                "Thanks For Being You!",
                                "Guinness Called. They Want To Give You The World Record for Awesome.",
                                "You Rock🤘!",
                                "Fun = Anyplace With You! 🎉",
                                "You Look Great!",
                                "Hurray! You're Here!🥳"]
    var body: some View {
        VStack {
            Spacer()
            
            ZStack {
                Image("predict-ball-image")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 350)
                
                Circle()
                    .fill(.indigo)
                    .frame(width: 140, height: 140)
                    .offset(y: -16)
                
                Text(prediction)
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .frame(width: 100, height: 100)
                    .offset(y: -16)
                    .minimumScaleFactor(0.2)
                    .multilineTextAlignment(.center)
                    .animation(.default, value: prediction)
            }
            
            Spacer()
            
            Button("Hit Me!") {
                var newPredictionValue: String
                repeat {
                    newPredictionValue = choicesArray.randomElement() ?? "No prediction"
                } while newPredictionValue == prediction
                prediction = newPredictionValue
            }
            .buttonStyle(.borderedProminent)
            .font(.title)
            .tint(.indigo)
           
        }
        .padding()
    }
}
#Preview {
        ContentView()
    }

