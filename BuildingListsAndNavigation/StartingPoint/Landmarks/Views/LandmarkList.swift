//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Hyungmin Kim on 2023/09/30.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail()
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
                
        }
        .navigationTitle("Landmarks")
    }
}

#Preview {
    LandmarkList()
}
