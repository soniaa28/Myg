Class {
	#name : 'MygSkPairedBox',
	#superclass : 'MygSkBox',
	#category : 'Myg-Sokoban-Model',
	#package : 'Myg-Sokoban',
	#tag : 'Model'
}

{ #category : 'default encoding' }
MygSkPairedBox class >> textualMapCharacter [
	^ $2     "цифра 2"

]

{ #category : 'accessing' }
MygSkPairedBox >> backgroundRepresentation [
    "Особенная коробка:
     - фиолетовая на полу
     - тёмно-коричневая как обычная коробка на цели."

    ^ (self background class = MygSkPairedTarget)
        ifTrue:  [ MygSkBoxElement boxIconDarker ]                 "темно-коричневая"
        ifFalse: [ MygSkBoxElement boxIcon
                        tinted: (Color r: 0.4 g: 0.0 b: 0.6) ].    "фиолетовая"
]

{ #category : 'accessing' }
MygSkPairedBox >> isOnCorrectTarget [ 
	^ self background class = MygSkPairedTarget

]

{ #category : 'accessing' }
MygSkPairedBox >> isSpecialBox [ 
	^ true


]
