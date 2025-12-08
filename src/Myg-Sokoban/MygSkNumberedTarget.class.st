Class {
	#name : 'MygSkNumberedTarget',
	#superclass : 'MygSkTarget',
	#category : 'Myg-Sokoban-Model',
	#package : 'Myg-Sokoban',
	#tag : 'Model'
}

{ #category : 'testing' }
MygSkNumberedTarget >> backgroundRepresentation [ 
	^ MygSkBoxElement targetIcon

]

{ #category : 'testing' }
MygSkNumberedTarget >> isNumberedTarget [ 
	^ true

]

{ #category : 'testing' }
MygSkNumberedTarget >> isTarget [ 
	^ true


]

{ #category : 'testing' }
MygSkNumberedTarget >> letter [ 
	^ self class letter
]

{ #category : 'testing' }
MygSkNumberedTarget >> orderIndex [ 
	^ self class orderIndex
]
