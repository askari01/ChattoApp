//
//  Classes.swift
//  ChattoApp
//
//  Created by Enio Ohmaye on 2/19/16.
//  Copyright © 2016 Badoo. All rights reserved.
//

//
//  main.swift
//  CommandLine
//
//  Created by Enio Ohmaye on 2/13/16.
//  Copyright © 2016 Enio Ohmaye. All rights reserved.
//

import Foundation


func initializeVerbTable() {
    let machen = WeakVerb(infinitive: "machen", root: "mach")
    var verb = Verb(infinitive: "haben", root: "")
    verb.cacheVerb(.present, "habe", "hast", "hat", "haben", "habt", "haben")
    verb.cacheVerb(.past, "hatte", "hattest", "hatte", "hatten", "hattet", "hatten")
    verb = Verb(infinitive: "werden", root: "")
    verb.cacheVerb(.present, "werde", "wirst", "wird", "werden", "werdet", "werden")
    verb.cacheVerb(.past, "wurde", "wurdest", "wurde", "wurden", "wurdet", "wurden")
    verb = Verb(infinitive: "sein", root: "")
    verb.cacheVerb(.present, "bin", "bist", "ist", "sind", "seid", "sind")
    verb.cacheVerb(.past, "war", "warst", "war", "waren", "wart", "waren")
    verb = Verb(infinitive: "sehen", root: "")
    verb.cacheVerb(.present, "sehe", "siehst", "sieht", "sehen", "seht", "sehen")
    verb.cacheVerb(.past, "sah", "sahst", "sah", "sahen", "saht", "sahen")
    verb = Verb(infinitive: "geben", root: "")
    verb.cacheVerb(.present, "gebe", "gibst", "gibt", "geben", "gebt", "geben")
    verb.cacheVerb(.past, "gab", "gabst", "gab", "gaben", "gabt", "gaben")

}

/* Testing conjugation of cached verbs
for (_, verb) in Verb.verbs {
for person in personEnumeration {
print("\(person) " +  verb.conjugate(person, tense: .present))
}
for person in personEnumeration {
print("\(person) " +  verb.conjugate(person, tense: .past))
}
}
*/

/*

func exercisePossessive() {
for (person, pronoun) in pronounsDict {
for item in 0...3 {
print("-")
print("SAY:                    \(pronoun.enPossessive) \(dict[item].en)")
theInput = readLine()!
let pron = getPossessive(person, aCase: .nominative, aGender: dict[item].gender)
print("ANSWER:                 \(pron) \(dict[item].de)")
}
}
}


func exercisePossessiveRandom() {
var shuffle = [(Person, Pronoun, Int)]()

for (person, pronoun) in pronounsDict {
for item in 0...3 {
shuffle.append((person, pronoun, item))
}
}

shuffle = shuffle.shuffle()
for (person, pronoun, item) in shuffle {
print("-")
print("SAY:                    \(pronoun.enPossessive) \(dict[item].en)")
theInput = readLine()!
let pron = getPossessive(person, aCase: .nominative, aGender: dict[item].gender)
print("ANSWER:                 \(pron) \(dict[item].de)")
}
}

// subject SEE object. Personal pronoun in nominative + SEHEN + accusative
// Create a list of tupples. (person, person). Which we'll then shuffle to generate exercises.
func exerciseAccusative() {
var shuffle = [(Person, Pronoun, Pronoun)]()

for (person, subject) in pronounsDict {
for (_, object) in pronounsDict {
shuffle.append((person, subject, object))
}
}
shuffle = shuffle.shuffle()
let shuffleSize = shuffle.count
var count = 1
for (person, subject, object) in shuffle {
print("- \(count++) / \(shuffleSize)")
print("SAY:                    \(subject.en)  (SEE/s)  \(object.enAccusative)")
theInput = readLine()!
let verb = Verb.verbs["sehen"]!.conjugate(person, tense: .present)
print("ANSWER:                           \(subject.nominative) \(verb) \(object.accusative)")
}
}

// SUBJECT (GIVE) IND-OBJECT a book
func exerciseDative() {
var shuffle = [(Person, Pronoun, Pronoun)]()

for (person, subject) in pronounsDict {
for (_, object) in pronounsDict {
if (subject !== object) {
shuffle.append((person, subject, object))
}
}
}
shuffle = shuffle.shuffle()
let shuffleSize = shuffle.count
var count = 1
for (person, subject, object) in shuffle {
print("- \(count++) / \(shuffleSize)")
print("SAY:                    \(subject.en)  (GIVE/s)  \(object.enAccusative) a book.")
theInput = readLine()!
let verb = Verb.verbs["geben"]!.conjugate(person, tense: .present)
print("ANSWER:                           \(subject.nominative) \(verb) \(object.dative) ein buch.")
}
}


print("-------------------------------")
print("Hey, this is " + title + " - " + level + " Version \(version)")
print("Nathalie here")

var response = ""

while response != "quit" {
print("1. Possessive 2. Random 3.Accusative 4. Dative")
response = readLine()!
switch response {
case "1": exercisePossessive()
case "2": exercisePossessiveRandom()
case "3": exerciseAccusative()
case "4": exerciseDative()
default:break
}
}

*/

