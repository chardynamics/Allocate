//
//  PieChartView.swift
//  Allocate
//
//  Created by Charles Duong on 5/21/25.
//

import SwiftUI


struct PieSlice: Shape {
    var startAngle: Double
    var endAngle: Double
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        
        path.move(to: center)
        path.addArc(center: center,
                   radius: radius,
                   startAngle: Angle(degrees: startAngle),
                   endAngle: Angle(degrees: endAngle),
                   clockwise: false)
        path.closeSubpath()
        
        return path
    }
}

struct PieChart: View {
    var slices: [(Double, Color)]
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0..<slices.count, id: \.self) { index in
                    PieSlice(startAngle: self.startAngle(for: index),
                            endAngle: self.endAngle(for: index))
                        .fill(slices[index].1)
                }
            }
            
        }
        .aspectRatio(1, contentMode: .fit)
    }
    
    private func startAngle(for index: Int) -> Double {
        let preceding = slices.prefix(index).map { $0.0 }.reduce(0, +)
        return preceding * 360
    }
    
    private func endAngle(for index: Int) -> Double {
        let preceding = slices.prefix(index + 1).map { $0.0 }.reduce(0, +)
        return preceding * 360
    }
}

struct PieChartView: View {
    let pieData: [(Double, Color)] = [
        (0.4, .blue),
        (0.3, .green),
        (0.15, .orange),
        (0.15, .red)
    ]
    
    var body: some View {
        HStack {
            PieChart(slices: pieData)
                .frame(width: 150, height: 150)
            Spacer()
            
            VStack(alignment: .leading) {
                HStack {
                    Rectangle().fill(.blue).frame(width: 20, height: 20)
                    Text("Card Collection")
                }
                HStack {
                    Rectangle().fill(.green).frame(width: 20, height: 20)
                    Text("Car")
                }
                HStack {
                    Rectangle().fill(.orange).frame(width: 20, height: 20)
                    Text("Liquid Assets")
                }
                HStack {
                    Rectangle().fill(.red).frame(width: 20, height: 20)
                    Text("Misc.")
                }
            }
        }
    }
}

#Preview {
    PieChartView()
}
