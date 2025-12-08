Class {
	#name : 'MygSkPairedTarget',
	#superclass : 'MygSkTarget',
	#category : 'Myg-Sokoban-Model',
	#package : 'Myg-Sokoban',
	#tag : 'Model'
}

{ #category : 'default encoding' }
MygSkPairedTarget class >> textualMapCharacter [ 
	^ $1     "цифра 1"

]

{ #category : 'accessing' }
MygSkPairedTarget >> backgroundRepresentation [ 
	^ MygSkBoxElement pairedTargetIcon

]

{ #category : 'accessing' }
MygSkPairedTarget >> isTarget [ 
	^ true

]
