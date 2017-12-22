//public extension Statistics {
//    // MARK: Basic descriptive statistics
//    
//    public func sum<T>(_ values: [T]) -> T where T: SignedNumber {
//        var sum: T = 0
//        
//        for value in values {
//            sum += value
//        }
//        
//        return sum
//    }
//    
//    // MARK: Measures of central tendency
//
//    public func arithmeticMean<T>(_ values: [T]) -> T? {
//        let count = values.count
//        
//        if (count == 0) {
//            return nil
//        } else {
//            return sum(values) / values.count
//        }
//    }
//    
//    // MARK: Measures of dispersion
//}
