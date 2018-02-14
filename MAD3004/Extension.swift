//
//  Extension.swift
//  MAD3004
//
//  Created by Romil Parhwal on 2018-02-13.
//  Copyright © 2018 ShadyBond. All rights reserved.
//

import Foundation

extension Float
{
    func currency() -> String
    {
        return String.init(format: "$%0.2f", self)
    }
}

extension Int
{
    func unit() -> String
    {
        return String.init(format: "%d Units", self)
    }
}
