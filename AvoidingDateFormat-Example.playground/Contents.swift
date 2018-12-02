import UIKit

let date = Date()

//Fixed string
let dateFormatterWithFixedString = DateFormatter()
dateFormatterWithFixedString.dateFormat = "MM/d/yy"
let formattedDateFromFixedString = dateFormatterWithFixedString.string(from: date)

print(formattedDateFromFixedString)

//Enums
let formattedDateFromEnum = DateFormatter.localizedString(from: date, dateStyle: .short, timeStyle: .none)

print(formattedDateFromEnum)

//Template from class method
let localisedDateFormatUsingTemplateString = DateFormatter.dateFormat(fromTemplate: "d MM yy", options: 0, locale: Locale.current)
let dateFormatterUsingTemplateString = DateFormatter()
dateFormatterUsingTemplateString.dateFormat = localisedDateFormatUsingTemplateString
let formattedDateFromTemplateString = dateFormatterUsingTemplateString.string(from: date)

print(formattedDateFromTemplateString)

//Template from instance
let dateFormatterFromTemplate = DateFormatter()
dateFormatterFromTemplate.setLocalizedDateFormatFromTemplate("d MM yy")
let formattedDateFromTemplate = dateFormatterFromTemplate.string(from: date)

print(formattedDateFromTemplate)
