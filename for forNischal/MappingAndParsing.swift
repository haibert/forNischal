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
    
    let userID: String?
    let clientID: String?
    let Name: String?
    let lastName: String?
    let emailAddress: String?
    let techID: String?
    let additionalCompanies: String?
    let clientDetails: ClientDetails
    
    enum CodingKeys: String, CodingKey {
        case userID, techID, clientID
        case Name = "Name"
        case lastName, emailAddress, additionalCompanies, clientDetails
    }
    
    // THIS IS SO I CAN DECODE THE DATA AND STORE IT LOCALLY....
    init(from decoder: Decoder) throws {
        let dataContainer = try decoder.container(keyedBy: CodingKeys.self)
        self.userID = try dataContainer.decode(String.self, forKey: .userID)
        self.clientID = try dataContainer.decode(String.self, forKey: .clientID)
        self.Name = try dataContainer.decode(String.self, forKey: .Name)
        self.lastName = try dataContainer.decode(String.self, forKey: .lastName)
        self.emailAddress = try dataContainer.decode(String.self, forKey: .emailAddress)
        self.techID = try dataContainer.decode(String.self, forKey: .techID)
        self.additionalCompanies = try dataContainer.decode(String.self, forKey: .additionalCompanies)
        self.clientDetails = try dataContainer.decode(ClientDetails.self, forKey: .clientDetails)

    }
    // Instead of
   // if let dataContainer = try? decoder.container(keyedBy: CodingKeys.self)  {}

    /*
    init(from decoder: Decoder) throws {
        let dataContainer = try decoder.container(keyedBy: CodingKeys.self)
        self.userID = try dataContainer.decodeIfPresent(String.self, forKey: .userID)
        self.clientID = try dataContainer.decodeIfPresent(String.self, forKey: .clientID)
        self.Name = try dataContainer.decodeIfPresent(String.self, forKey: .Name)
        self.lastName = try dataContainer.decodeIfPresent(String.self, forKey: .lastName)
        self.emailAddress = try dataContainer.decodeIfPresent(String.self, forKey: .emailAddress)
        self.techID = try dataContainer.decodeIfPresent(String.self, forKey: .techID)
        self.additionalCompanies = try dataContainer.decodeIfPresent(String.self, forKey: .additionalCompanies)
        self.clientDetails = try dataContainer.decodeIfPresent(ClientDetails.self, forKey: .clientDetails)
    }
 */
}
// MARK: - ClientDetails
struct ClientDetails: Codable {
    let clientID:String?
    let firstName: String?
    let lastName: String?
    let email: String?
    let customerName: String?
    let businessAddress: String?
    let businessCity: String?
    let businessState: String?
    let businessZip: String?
    let businessCountry: String?
    let businessPhone: String?
    let businessFax: String?  // null value
    let mobilePhone: String?
    let contactName: String?
    let contactTitle: String?
    let contactPhone: String?
    let contactEmail: String?
    let lastUpdated: String?
    
    
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
        let dataContainer = try decoder.container(keyedBy: CodingKeys.self)
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
