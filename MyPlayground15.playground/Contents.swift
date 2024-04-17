
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
    do{
        try fileTransfer()
    } catch FileTransferError.noConnection {
        print("No Connection")
    } catch FileTransferError.lowBandWidth {
        print("Speed too low")
    } catch FileTransferError.fileNotFound {
        print("File Not Found")
    } catch {
        return "Unkonwn"
    }
    return "Successful transfer"
}

sendFile()
