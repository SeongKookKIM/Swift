
/*
 딕셔너리
 */

//var bookDict: [String: String] = ["100-432112" : "Wind in th Willows"]
var bookDict1 = ["100-432112" : "Wind in th Willows"]
// 빈 딕셔너리 초기화 청수형 키값, 문자열
var myDictionary = [Int: String]()

let keys = ["1","2","3","4","5","6","7","8"]
let values = ["Value1","Value2","Value3","Value4","Value5","Value6","Value7","Value8"]

/*
 let bookDict = Dictionary(uniqueKeysWithValues: zip(keys, values)) // 순서가 보장은 안됌
*/
var bookDict = Dictionary(uniqueKeysWithValues: zip(1..., values))

print(bookDict.count)
print(bookDict[1, default: "Novalue"])
bookDict[123] =  "Value"

for (bookId, value) in bookDict {
    print("Book Id: \(bookId), Value: \(value)")
}

