//
//  CalculatorItemQueue.swift
//  Calculator
//
//  Created by 황제하 on 2021/11/08.
//

import Foundation

struct CalculatorItemQueue<T: CalculateItem> {
    let items: LinkedList<T> = LinkedList<T>()
    
    var isEmpty: Bool {
        return items.isEmpty
    }
    
    func enqueue(value: T) {
        self.items.addRear(value)
    }
    
    @discardableResult
    func dequeue() throws -> T {
        guard let node = self.items.removeFront() else {
            throw QueueError.queueIsEmpty
        }
        
        return node.value
    }
    
    func clear() {
        items.removeAll()
    }
}
