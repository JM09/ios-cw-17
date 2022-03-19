//
//  File.swift
//  corona
//
//  Created by Jassim alajmi on 19/03/2022.
//

import Foundation

struct userCovidInfo: Identifiable{
    var id = UUID()
    let fullName : String
    var area : String
    var numberOfDoses : Int
}
var people = [userCovidInfo(fullName: "jassem", area: "sabah al nasser", numberOfDoses: 3), userCovidInfo(fullName: "hussain", area: "bayan", numberOfDoses: 2), userCovidInfo(fullName: "fahad", area: "sabah al salem", numberOfDoses: 0)]


