import Foundation
class SoundexClass {
    let forbiddenVowels = ["a","e","i","o","u"]
    let forbiddenConsonants = ["y","h","w"]
    let letters1 = ["b","f","p","v"]
    let letters2 = ["c","g","j","k","q","s","x","z"]
    let letters3 = ["d","t"]
    let letters5 = ["m","n"]
    var result = ""
    
    func getNumber(letter: String) -> String {
        if (forbiddenVowels.contains(String(letter)))  {
            return "X"
        }
        if (forbiddenConsonants.contains(String(letter))) {
            return "Y"
        }
        if (letters1.contains(String(letter))) {
            return "1"
        }
        if (letters2.contains(String(letter))) {
            return "2"
        }
        if (letters3.contains(String(letter))) {
            return "3"
        }
        if ("l" == String(letter)) {
            return "4"
        }
        if (letters5.contains(String(letter))) {
            return "5"
        }
        return"6"
    }
    
    func removeFirstCoincidences() -> String {
        var count = 0
        while String(result[result.index(result.startIndex, offsetBy: count)]) ==
            String(result[result.index(result.startIndex, offsetBy: count + 1)]) {
            result.remove(at: result.index(result.startIndex, offsetBy: count + 1))
            count += 1
        }
        return result
    }
    
    func removeIndex(index: String.Index, offSet: Int) {
         result.remove(at: result.index(index, offsetBy: offSet))
    }
    
    func removeXY(XY:String) {
        result = removeFirstCoincidences()
        while (result.contains(XY)) {
            let index = result.firstIndex(of: Character(XY))
            if index != result.startIndex {
                let before = result[result.index(index!, offsetBy: -1)]
                let next = result[result.index(index!, offsetBy: +1)]
                if before == next && String(result[index!]) != "X" {
                    removeIndex(index: index!,offSet: 1)
                } else if String(result[result.index(index!, offsetBy: 0)]) != XY {
                    removeIndex(index: index!,offSet: 0)
                } else if before == next && String(result[index!]) == "X" {
                    result += String(next)
                }
            }
            result.remove(at: index!)
        }
    }
    
    func checkCases45(text: String) {
        var count = 1
        while (getNumber(letter: String(text.first!).lowercased()) == String(result.prefix(count))) {
            result.removeFirst()
            count += 1
        }
        if result.count > 2 && result.count > 3 {
            result = String(result.prefix(3))
        }
        while result.count < 3 {
            result += "0"
        }
    }
    
    func getSoundex(text: String) -> String {
        for letter in text.lowercased() {
            result += getNumber(letter: String(letter))
        }
        removeXY(XY: "X")
        removeXY(XY: "Y")
        checkCases45(text: text)
        return text.prefix(1) + String(result)
    }
}
