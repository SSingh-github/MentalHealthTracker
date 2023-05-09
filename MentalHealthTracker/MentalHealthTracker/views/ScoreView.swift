//
//  scoreView.swift
//  
//
//  Created by Chicmic on 08/05/23.
//

import SwiftUI


struct ScoreView: View {
    @Binding var score: Double
    
    var body: some View {
        ZStack {               
            Color.black
                .ignoresSafeArea()
            VStack {
                Text(Constants.Labels.yourScore)
                    .font(.title)
                    .padding(.top, 50)
                    .bold()
                Spacer()
                ZStack {
                    Circle()
                        .stroke(Color.gray, lineWidth: 20)
                        .frame(width: 200, height: 200)
                    Circle()
                        .trim(from: 0.0, to: CGFloat(min(self.score, 100)) / 100.0)
                        .stroke(
                            score >= 0 && score <= 20 ?
                            Color.red : Color.green
                            , lineWidth: 20)
                        .frame(width: 200, height: 200)
                    VStack {
                        Text(String(format: Constants.StringFormats.oneDecimalPlace, self.score))
                            .font(.system(size: 50))
                            .bold()
                    }
                }
                Spacer()
                Text(Constants.Labels.scoreMessage)
                Spacer()
            }
            .frame(width: 300)
            .cornerRadius(10)
            .foregroundColor(.white)
            .padding()
            .background(Color(red: 0.1, green: 0.1, blue: 0.1))
            .cornerRadius(20)
            .padding()
        }
    }
}



//struct scoreView_Previews: PreviewProvider {
//    static var previews: some View {
//        ScoreView()
//    }
//}
