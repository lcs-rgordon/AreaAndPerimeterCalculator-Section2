//
//  RectangleView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Russell Gordon on 2023-01-19.
//

import SwiftUI

struct RectangleView: View {
    
    // MARK: Stored properties
    // @State is a "property wrapper" that essentially
    // tells SwiftUI to update the user interface when these
    // values change.
    @State var length: Double = 50
    @State var width: Double = 25
    @State var desiredPrecision: Double = 1
    
    // MARK: Computed properties
    var area: Double {
        return length * width
    }
    
    // Expressing the user interface
    var body: some View {
        VStack(spacing: 15) {
            
            HStack {
                Image("Rectangle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                
                Spacer()
            }
            
            Group {

                Text("Length")
                    .font(.title2)
                    .bold()

                Slider(value: $length,
                       in: 0...100,
                       label: { Text("Length") },
                       minimumValueLabel: { Text("0") },
                       maximumValueLabel: { Text("100") })
                
                // Use string interpolation to convert
                // the Double data type to text (String)
                //
                // \(variable)
                Text("\(length.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                    .font(.title2)

            }
                        
            Group {
                Text("Width")
                    .font(.title2)
                    .bold()
                
                Slider(value: $width,
                       in: 0...100,
                       label: { Text("Width") },
                       minimumValueLabel: { Text("0") },
                       maximumValueLabel: { Text("100") })
                
                
                Text("\(width.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                    .font(.title2)
            }
            
            Group {
                Text("Area")
                    .font(.title2)
                    .bold()

                Text("\(area.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                    .font(.title2)

            }
            
            Group {
                Text("Perimeter")
                    .font(.title2)
                    .bold()
            }
            
            // Allow user to control precision
            Group {
                
                Stepper("Precision", value: $desiredPrecision, in: 0...6)
                
                // Show precision
                Text("\(desiredPrecision.formatted(.number.precision(.fractionLength(0))))")
                    .font(.title2)
                
            }
            
            Spacer()
            
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
