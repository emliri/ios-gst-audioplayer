import Foundation

struct PlayerError:LocalizedError {
    let errorDescription:String?
    
    static let sourceNotSet:PlayerError = PlayerError(errorDescription:NSLocalizedString(
        "PlayerError_sourceNotSet", tableName:nil, bundle:Bundle(for:Player.self), comment:String()))
    static let canNotPause:PlayerError = PlayerError(errorDescription:NSLocalizedString(
        "PlayerError_canNotPause", tableName:nil, bundle:Bundle(for:Player.self), comment:String()))
}