//
//  ProgressBar.swift
//  AnimatedProgressBar2026
//
//  Created by Douglas Jasper on 2026-06-23.
//

import SwiftUI

struct ProgressBar: View {
    var progress: Double  // Value from 0.0 to 1.0
    var barHeight: CGFloat = 20
    var cornerRadius: CGFloat = 10
    var barColor: Color = .blue
    var backgroundColor: Color = Color.gray.opacity(0.3)
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                // Background
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(backgroundColor)
                
                // Foreground (Animated)
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(barColor)
                    .frame(width: geometry.size.width * CGFloat(progress))
                    .animation(.easeInOut(duration: 0.8), value: progress)
            }
        }
        .frame(height: barHeight)
    }
}

#Preview {
    ProgressBar(progress: 0.5, barHeight: 30, cornerRadius: 5, barColor: Color.green, backgroundColor: Color.gray)
}
