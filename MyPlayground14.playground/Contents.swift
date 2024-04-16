
var treeArray = ["pine", "Oak", "Yew"]

var priceArray = [Float]()

print(priceArray)

var nameArraay = [String](repeating: "MyString", count: 10)

print(nameArraay)

let firstArray = ["Red", "Green", "Blue"]
let secondArray = ["Indigo", "Violet"]

let thirdArray = firstArray + secondArray // 배열 요소들 합치기

print(thirdArray)
print(thirdArray.count) // 배열의 요소 개수

print(treeArray.isEmpty) // 빈 배열인지 여부

print(treeArray[2]) // 2번쨰 index

treeArray[1] = "Redwood" // 배열요소 바꾸기
treeArray.append("RedWood")
treeArray += ["RedWood"]

treeArray.shuffle() // 배열 요소 섞기
print(treeArray)

print(treeArray.randomElement() ?? "") // 랜덤 요소
