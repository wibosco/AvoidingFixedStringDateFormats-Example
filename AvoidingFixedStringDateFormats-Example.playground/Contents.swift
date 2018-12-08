import UIKit

let timestamp: TimeInterval = 1165071389
let date = Date(timeIntervalSince1970: timestamp)

//Fixed string using UK locale
let dateFormatterUK = DateFormatter()
dateFormatterUK.locale = Locale(identifier: "en_GB")
dateFormatterUK.dateFormat = "yyyy-MM-dd hh:mm:ss a"
let formattedDate = dateFormatterUK.string(from: date)

print(formattedDate)

//Examples

//Fixed string using current locale
let dateFormatterWithFixedString = DateFormatter()
dateFormatterWithFixedString.dateFormat = "M/d/yy h:m:s a"
let formattedDateFromFixedString = dateFormatterWithFixedString.string(from: date)

print(formattedDateFromFixedString)

//Enums property
let dateFormatterFromEnumProperty = DateFormatter()
dateFormatterFromEnumProperty.dateStyle = .full
dateFormatterFromEnumProperty.timeStyle = .medium
let formattedDateFromEnumProperty = dateFormatterFromEnumProperty.string(from: date)

print(formattedDateFromEnumProperty)

//Enums class
let formattedDateFromEnum = DateFormatter.localizedString(from: date, dateStyle: .full, timeStyle: .medium)

print(formattedDateFromEnum)

//Template from class method
let localisedDateFormatUsingTemplateString = DateFormatter.dateFormat(fromTemplate: "d MM", options: 0, locale: Locale.current)
let dateFormatterUsingTemplateString = DateFormatter()
dateFormatterUsingTemplateString.dateFormat = localisedDateFormatUsingTemplateString
let formattedDateFromTemplateString = dateFormatterUsingTemplateString.string(from: date)

print(formattedDateFromTemplateString)

//Template from instance
let dateFormatterFromTemplate = DateFormatter()
dateFormatterFromTemplate.setLocalizedDateFormatFromTemplate("d MM")
let formattedDateFromTemplate = dateFormatterFromTemplate.string(from: date)

print(formattedDateFromTemplate)

//Backend
let dateFormatterBackend = DateFormatter()
dateFormatterBackend.locale = Locale(identifier: "en_US_POSIX")
dateFormatterBackend.timeZone = TimeZone(identifier: "UTC")
dateFormatterBackend.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
let formattedDateForBackend = dateFormatterBackend.string(from: date)

print(formattedDateForBackend)

//ISO 8601
let dateFormatterISO8601 = ISO8601DateFormatter()
let formattedDateToISO8601 = dateFormatterISO8601.string(from: date)

print(formattedDateToISO8601)
