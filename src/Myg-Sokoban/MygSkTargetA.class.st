Class {
	#name : 'MygSkTargetA',
	#superclass : 'MygSkNumberedTarget',
	#category : 'Myg-Sokoban-Model',
	#package : 'Myg-Sokoban',
	#tag : 'Model'
}

{ #category : 'default encoding' }
MygSkTargetA class >> letter [ 
 ^ $A 
]

{ #category : 'default encoding' }
MygSkTargetA class >> orderIndex [ 
^ 1 
]

{ #category : 'default encoding' }
MygSkTargetA class >> textualMapCharacter [ 
	^ $A 
]

{ #category : 'testing' }
MygSkTargetA >> backgroundRepresentation [ 
	^ MygSkBoxElement targetIconWithLetter: $A
]
