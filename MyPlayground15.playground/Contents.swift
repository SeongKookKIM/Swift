
let connectionOk = true
let connectionSepeed = 30.00
let fileFound = false


enum FileTransferError: Error {
    case noConnection
    case lowBandWidth
    case fileNotFound
}

func fileTransfer() throws  {
    guard connectionOk else {
        throw FileTransferError.noConnection
    }
    
    guard connectionSepeed > 30 else {
        throw FileTransferError.lowBandWidth
    }
    
    guard fileFound else {
        throw FileTransferError.fileNotFound
    }
}


func sendFile() -> String {
    
    defer {
        // Finally와 유사한 기능, 파일 닫기 등 종료 준비
        print("end of sendFile")
    }
    
    
    do{
        try fileTransfer()
    } catch FileTransferError.noConnection {
        print("No Connection")
    } catch FileTransferError.lowBandWidth {
        print("Speed too low")
    } catch FileTransferError.fileNotFound {
        print("File Not Found")
    } catch let error {
        return "Unkonwn"
    }
    return "Successful transfer"
}

print(sendFile())
