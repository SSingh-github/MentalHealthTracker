//
//  Constants.swift
//  MentalHealthTracker
//
//  Created by Chicmic on 08/05/23.
//

import Foundation

struct Constants {
    
    struct Icons {
        static let articlesIcon = "list.dash"
        static let testIcon = "waveform.path.ecg.rectangle.fill"
        static let analysisIcon = "chart.bar.xaxis"
        static let linkIcon = "link"
        static let upArrow = "arrow.up"
        static let downArrow = "arrow.down"
        static let legendIcon = "line.diagonal"
        static let helpIcon = "questionmark.circle"
    }
    
    struct Labels {
        static let articleLabel = "Articles"
        static let testLabel = "Test"
        static let analysisLabel = "Analysis"
        static let submitTest = "Submit Test"
        static let score = "Score"
        static let dateCapitalized = "Date"
        static let date = "date"
        static let goalCapitalized = "Threshold"
        static let goal = "goal"
        static let yourScore = "Your Score"
        static let scoreMessage = "Your score has been saved successfully!"
        static let scoreEntry = "ScoreEntry"
        static let dataModelName = "DataModel"
        static let alertTitle = "Do you want to submit the test?"
        static let alertMessage = "Choose 'Submit' to proceed"
        static let primartButtonLabel = "Submit"
        static let secondaryButtonLable = "Cancel"
    }
    
    struct Images {
        static let backgroundImage = "background"
    }
    
    struct Questions {
        static let question: [String] = [
            "How's your day today?",
            "How many people did you meet today?",
            "How much happy do you feel today?",
            "Have you recently been able to concentrate on whatever you are doing?",
            "Have you recently been losing confidence in yourself?",
            "Have you recently been able to tackle your problems?",
            "For how many hours do you sleep daily?",
            "Have you suffered from any disorder earlier?"
        ]
    }
    
    struct StringFormats {
        static let oneDecimalPlace = "%.1f"
        static let threeDecimalPlaces = "%.3f"
        static let dateFormat = "dd/MM/yyyy"
    }
    
    struct Articles {
        static let urls: [String] = [
            "https://ncdalliance.org/why-ncds/ncds/mental-health-and-neurological-disorders?gclid=CjwKCAjw3ueiBhBmEiwA4BhspEqJ_kHglrDWh3TpldSV5i2fgb_AWMN17n_RQarqGmJgkpKgGBNiVBoC-2oQAvD_BwE",
                                     
             "https://www.who.int/publications/i/item/9789240003927?gclid=CjwKCAjw3ueiBhBmEiwA4BhspBm6MvDEIsQaKJG4Kbd7lZl9GIiWOQ0T17rQh3HL4A0Xi6Dg2Ym6fxoCaI8QAvD_BwE",
                                     
             "https://ourworldindata.org/mental-health",
                                     
             "https://www.all4kids.org/news/blog/effects-of-technology-on-mental-health/",
                                     
             "https://www.nhs.uk/mental-health/self-help/tips-and-support/how-to-be-happier/"
        ]
        static let titles: [String] = [
            "Mental Health and Neurological Disorders",
            "Doing What Matters in Times of Stress",
            "Mental Health",
            "Effects of Technology on mental health","How to be happier"
        ]
        
        
        static let summary: [String] = [
            "A person’s ability to maintain good mental health is down to a range of factors, which are often beyond their control. The determinants of mental health include social, environmental, psychological, and biological factors. These include the major NCD risk factors of alcohol and tobacco use, unhealthy diet, and physical inactivity.",
                                        
            "The guide aims to equip people with practical skills to help cope with stress. A few minutes each day are enough to practice the self-help techniques. The guide can be used alone or with the accompanying audio exercises.",
                                        
            "In this entry we present the latest estimates of mental health disorder prevalence and the associated disease burden. Most of the estimates presented in this entry are produced by the Institute for Health Metrics and Evaluation and reported in their flagship Global Burden of Disease study.",
                                        
            "In our ever-changing world, the use of technology is continuously expanding. It influences every area of our lives, from our ability to communicate with loved ones to accessing information at our fingertips. Unfortunately, we have also seen a number of negative effects of technology on mental health as well.",
                                        
            "Try our 6 tips to help you be happier, more in control, and able to cope better with life's ups and downs."
        ]
        
        
        static let images: [String] = ["mhtImage1", "mhtImage2", "mht3", "mht4", "photo"]
    }
}
