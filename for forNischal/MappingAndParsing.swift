//
//  MappingAndParsing.swift
//  for forNischal
//
//  Created by hb on 10/26/20.
//

import Foundation


// MARK: - UserInformation
struct UserInformation: Codable {
    let data: DataClass
}

// MARK: - DataClass
struct DataClass: Codable {
    
    var userID: String? = ""
    var clientID: String? = ""
    var Name: String? = ""
    var lastName: String? = ""
    var emailAddress: String? = ""
    var techID: String? = ""
    var additionalCompanies: String? = ""
    var clientDetails: ClientDetails
    
    enum CodingKeys: String, CodingKey {
        case userID, techID, clientID
        case Name = "Name"
        case lastName, emailAddress, additionalCompanies, clientDetails
    }
    
    // THIS IS SO I CAN DECODE THE DATA AND STORE IT LOCALLY....
    init(from decoder: Decoder) throws {
        if let dataContainer = try? decoder.container(keyedBy: CodingKeys.self) {
            self.userID = try dataContainer.decode(String.self, forKey: .userID)
            self.clientID = try dataContainer.decode(String.self, forKey: .clientID)
            self.Name = try dataContainer.decode(String.self, forKey: .Name)
            self.lastName = try dataContainer.decode(String.self, forKey: .lastName)
            self.emailAddress = try dataContainer.decode(String.self, forKey: .emailAddress)
            self.techID = try dataContainer.decode(String.self, forKey: .techID)
            self.additionalCompanies = try dataContainer.decode(String.self, forKey: .additionalCompanies)
            
        }
    }
}
// MARK: - ClientDetails
struct ClientDetails: Codable {
    var clientID:String? = ""
    var firstName: String? = ""
    var lastName: String? = ""
    var email: String? = ""
    var customerName: String? = ""
    var businessAddress: String? = ""
    var businessCity: String? = ""
    var businessState: String? = ""
    var businessZip: String? = ""
    var businessCountry: String? = ""
    var businessPhone: String? = ""
    var businessFax: String? = "" // null value
    var mobilePhone: String? = ""
    var contactName: String? = ""
    var contactTitle: String? = ""
    var contactPhone: String? = ""
    var contactEmail: String? = ""
    var lastUpdated: String? = ""
    
    
    enum CodingKeys: String, CodingKey {
        case clientID
        case firstName = "FirstName"
        case lastName = "LastName"
        case email
        case customerName = "CustomerName"
        case businessAddress = "BusinessAddress"
        case businessCity = "BusinessCity"
        case businessState = "BusinessState"
        case businessZip = "BusinessZip"
        case businessCountry = "BusinessCountry"
        case businessPhone = "BusinessPhone"
        case businessFax = "BusinessFax"
        case mobilePhone = "MobilePhone"
        case contactName = "ContactName"
        case contactTitle = "ContactTitle"
        case contactPhone = "ContactPhone"
        case contactEmail = "ContactEmail"
        case lastUpdated
    }

    
    init(from decoder: Decoder) throws {
        if let dataContainer = try? decoder.container(keyedBy: CodingKeys.self) {
            self.clientID = try dataContainer.decode(String.self, forKey: .clientID)
            self.firstName = try dataContainer.decode(String.self, forKey: .firstName)
            self.lastName = try dataContainer.decode(String.self, forKey: .lastName)
            self.email = try dataContainer.decode(String.self, forKey: .email)
            self.customerName = try dataContainer.decode(String.self, forKey: .customerName)
            self.businessAddress = try dataContainer.decode(String.self, forKey: .businessAddress)
            self.businessCity = try dataContainer.decode(String.self, forKey: .businessCity)
            self.businessState = try dataContainer.decode(String.self, forKey: .businessState)
            self.businessZip = try dataContainer.decode(String.self, forKey: .businessZip)
            self.businessCountry = try dataContainer.decode(String.self, forKey: .businessCountry)
            self.businessPhone = try dataContainer.decode(String.self, forKey: .businessPhone)
            self.businessFax = try dataContainer.decode(String.self, forKey: .businessFax)
            self.mobilePhone = try dataContainer.decode(String.self, forKey: .mobilePhone)
            self.contactName = try dataContainer.decode(String.self, forKey: .contactName)
            self.contactTitle = try dataContainer.decode(String.self, forKey: .contactTitle)
            self.contactPhone = try dataContainer.decode(String.self, forKey: .contactPhone)
            self.contactEmail = try dataContainer.decode(String.self, forKey: .contactEmail)
            self.lastUpdated = try dataContainer.decode(String.self, forKey: .lastUpdated)
            
        }
    }
}
