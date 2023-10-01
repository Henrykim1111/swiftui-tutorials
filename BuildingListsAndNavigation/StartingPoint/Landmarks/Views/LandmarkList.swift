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
                    LandmarkDetail(landmark:  landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
                
        }
        .navigationTitle("Landmarks")
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}

//#Preview {
//    ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
//                LandmarkList()
//                    .previewDevice(PreviewDevice(rawValue: deviceName))
//                    .previewDisplayName(deviceName)
//            }
//}
