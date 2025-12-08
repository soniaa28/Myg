Class {
	#name : 'MygSkTargetC',
	#superclass : 'MygSkNumberedTarget',
	#category : 'Myg-Sokoban-Model',
	#package : 'Myg-Sokoban',
	#tag : 'Model'
}

{ #category : 'default encoding' }
MygSkTargetC class >> letter [ 
	 ^ $C
]

{ #category : 'default encoding' }
MygSkTargetC class >> orderIndex [ 
	^ 3
]

{ #category : 'default encoding' }
MygSkTargetC class >> textualMapCharacter [ 
 ^ $C
]

{ #category : 'testing' }
MygSkTargetC >> backgroundRepresentation [ 
	^ MygSkBoxElement targetIconWithLetter: $C
]
