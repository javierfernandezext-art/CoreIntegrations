
import Foundation

public protocol CoreConfigurationProtocol {
    var appSettings: CoreSettingsProtocol { get }
    var remoteConfigDataSource: any CoreRemoteDataSource { get }
//    var amplitudeDataSource: any CoreAnalyticsDataSource { get }
    var initialConfigurationDataSource: (any ConfigurationEventsDataSource)? { get }
    var paywallDataSource: any CorePaywallDataSource { get }
    var useDefaultATTRequest: Bool { get }
    var configurationTimeout: Int { get }
    var attributionServerDataSource: any AttributionServerDataSource { get }
    var sentryConfigDataSource: (any SentryDataSourceProtocol)? { get }
}

public extension CoreConfigurationProtocol {
    var useDefaultATTRequest: Bool { return true }
    
    var configurationTimeout: Int {
        return 6
    }
    

}
