//
//  LockShield.swift
//  AlamoStudy
//
//  Created by Hyeonsoo Kim on 2022/05/09.
//

import SwiftUI

struct LockShield: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                let width = geometry.size.width
                let height = geometry.size.height
                Image(systemName: "lock.shield.fill")
                    .resizable()
                    .frame(width: width / 2, height: height / 3)
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

struct LockShield_Previews: PreviewProvider {
    static var previews: some View {
        LockShield()
    }
}
