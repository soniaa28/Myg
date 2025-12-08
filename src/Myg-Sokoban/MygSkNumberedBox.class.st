Class {
	#name : 'MygSkNumberedBox',
	#superclass : 'MygSkBox',
	#instVars : [
		'locked'
	],
	#category : 'Myg-Sokoban-Model',
	#package : 'Myg-Sokoban',
	#tag : 'Model'
}

{ #category : 'initialization' }
MygSkNumberedBox >> backgroundRepresentation [ 
	^ MygSkBoxElement
		boxIconWithLetter: self letter
		locked: self isLocked
]

{ #category : 'initialization' }
MygSkNumberedBox >> initialize [ 
	super initialize.
	locked := false
]

{ #category : 'initialization' }
MygSkNumberedBox >> isLocked [ 
	^ locked
]

{ #category : 'initialization' }
MygSkNumberedBox >> isNumberedBox [ 
	^ true

]

{ #category : 'initialization' }
MygSkNumberedBox >> isOnCorrectTarget [ 
	"Для нумерованных коробок 'правильно' = 'заблокирована по порядку'."
	^ self isLocked
]

{ #category : 'initialization' }
MygSkNumberedBox >> letter [ 
	^ self class letter
]

{ #category : 'initialization' }
MygSkNumberedBox >> lockAsCompleted [ 
	locked := true
]

{ #category : 'initialization' }
MygSkNumberedBox >> orderIndex [ 
	^ self class orderIndex
]

{ #category : 'actions api' }
MygSkNumberedBox >> unlock [ 
    locked := false

]
