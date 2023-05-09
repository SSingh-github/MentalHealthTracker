//
//  HelpView.swift
//  MentalHealthTracker
//
//  Created by Chicmic on 09/05/23.
//

import SwiftUI

struct HelpView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            HStack {
                Spacer()

                Button("Got It") {
                    presentationMode.wrappedValue.dismiss()
                }
                .foregroundColor(.blue)
            }
            .padding()
            
            VStack(alignment: .leading) {
                Text("Please consider the following instructions while answering this question:")
                    .font(.title2)
                    .bold()
                    .padding(.bottom)
                Text("According to you,")
                    .font(.title3)
                    .padding(.bottom)
                Text("If your day was very bad, choose value between 0 to 20")
                    .padding(.bottom, 4)
                Text("If your day was bad, choose value between 20 to 40")
                    .padding(.bottom, 4)
                Text("If your day was fine, choose value between 40 to 60")
                    .padding(.bottom, 4)
                Text("If your day was good, choose value between 60 to 80")
                    .padding(.bottom, 4)
                Text("If your day was extremely good, choose value between 80 to 100")
                    .padding(.bottom, 8)
                Spacer()
                Text("Note: Adhering to the given instructions is necessary to get the accurate score.")
                    .font(.caption)
                Spacer()
            }
            .foregroundColor(.white)
            .padding()
            .cornerRadius(10)
            Spacer()
        }
        .background(Color(red: 0.1, green: 0.1, blue: 0.1))
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
