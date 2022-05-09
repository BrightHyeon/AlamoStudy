//
//  LockShield.swift
//  AlamoStudy
//
//  Created by Hyeonsoo Kim on 2022/05/09.
//

import SwiftUI

struct LockShield: View {
    var body: some View {
        VStack {
            Image(systemName: "lock.shield.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .padding()
    }
}

struct LockShield_Previews: PreviewProvider {
    static var previews: some View {
        LockShield()
    }
}
