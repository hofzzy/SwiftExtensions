//
//  Optional.swift
//  SwiftExtensions
//
//  Copyright © 2018年 hofzzy. All rights reserved.
//

import Foundation

extension Optional {

  public func reduce<U>(initial: U, combine: (U, Wrapped) -> U) -> U {
    switch self {
    case .none:
      return initial
    case .some(let value):
      return combine(initial, value)
    }
  }

  public func filter (includeElement: (Wrapped) -> Bool) -> Wrapped? {
    return flatMap { includeElement($0) ? $0 : nil }
  }

  public func forEach (action: (Wrapped) -> Void) {
    reduce(initial: ()) { action($1) }
  }
}
