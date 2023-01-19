//
//  RectangleView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Russell Gordon on 2023-01-19.
//

import SwiftUI

struct RectangleView: View {
    var body: some View {
        VStack(spacing: 15) {
            
            HStack {
                Image("Rectangle")
                    .resizable()
                    .scaledToFit()
                .frame(width: 250)
                
                Spacer()
            }
            
            Text("Length")
                .font(.title2)
                .bold()
            
            Text("7.0")
                .font(.title2)

            Text("Width")
                .font(.title2)
                .bold()
            
            Text("5.0")
                .font(.title2)

            Text("Area")
                .font(.title2)
                .bold()
            
            Text("35.0")
                .font(.title2)


            
            Spacer()
            
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
