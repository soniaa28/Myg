"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them.

Public API and Key Messages

- message one
- message two
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.

Internal Representation and Key Implementation Points.


    Implementation Points
"
Class {
	#name : 'MygSkBox',
	#superclass : 'MygSkMovable',
	#category : 'Myg-Sokoban-Model',
	#package : 'Myg-Sokoban',
	#tag : 'Model'
}

{ #category : 'default encoding' }
MygSkBox class >> textualMapCharacter [ 
	
	^ $$
]

{ #category : 'accessing' }
MygSkBox >> backgroundRepresentation [

	^ self background class = MygSkTarget
		  ifTrue: [ MygSkBoxElement boxIconDarker ]
		  ifFalse: [ MygSkBoxElement boxIcon ]
]

{ #category : 'move' }
MygSkBox >> bringIn: aPlayer going: aDirection [ 

    | boxPreviousPosition neighbor didMove |
    aPlayer class = self class ifTrue: [ ^ false ].
    boxPreviousPosition := self position.
    neighbor := self board atPosition: aDirection * self position.
    didMove := self moveIn: neighbor going: aDirection.
    didMove ifTrue: [
        | playerPreviousPosition |
        playerPreviousPosition := aPlayer position.
        aPlayer basicPosition: boxPreviousPosition.
        self board updatePositionOf: aPlayer from: playerPreviousPosition.
        "Считаем push только когда ящик реально сдвинулся"
        self board gameManager ifNotNil: [
            self board gameManager currentPushCount:
                self board gameManager currentPushCount + 1 ]
    ].
    ^ didMove

]

{ #category : 'move' }
MygSkBox >> isBox [ 

	^ true
]

{ #category : 'testing' }
MygSkBox >> isOnCorrectTarget [ 
	^ self background class = MygSkTarget
]

{ #category : 'testing' }
MygSkBox >> isSpecialBox [ 
	^ false
]

{ #category : 'default encoding' }
MygSkBox >> textualMapCharacter [

	^ self background class = MygSkTarget
		  ifTrue: [ MygSkBoxOnTarget textualMapCharacter ]
		  ifFalse: [ self class textualMapCharacter ]
]
