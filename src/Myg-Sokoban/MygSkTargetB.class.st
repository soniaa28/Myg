Class {
	#name : 'MygSkTargetB',
	#superclass : 'MygSkNumberedTarget',
	#category : 'Myg-Sokoban-Model',
	#package : 'Myg-Sokoban',
	#tag : 'Model'
}

{ #category : 'default encoding' }
MygSkTargetB class >> letter [ 
	 ^ $B 
]

{ #category : 'default encoding' }
MygSkTargetB class >> orderIndex [ 
	^ 2 
]

{ #category : 'default encoding' }
MygSkTargetB class >> textualMapCharacter [ 
	^ $B 
]

{ #category : 'testing' }
MygSkTargetB >> backgroundRepresentation [ 
	^ MygSkBoxElement targetIconWithLetter: $B
]
