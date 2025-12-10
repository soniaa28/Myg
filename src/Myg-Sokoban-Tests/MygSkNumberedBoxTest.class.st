Class {
	#name : 'MygSkNumberedBoxTest',
	#superclass : 'TestCase',
	#category : 'Myg-Sokoban-Tests',
	#package : 'Myg-Sokoban-Tests'
}

{ #category : 'tests' }
MygSkNumberedBoxTest >> testNumberedBoxUnlocksWhenBackgroundIsNotTarget [
	| board boxA ground |
	board := MygSkBoard new.

	boxA := MygSkBoxA new.
	ground := MygSkGround new.
	boxA background: ground.

	boxA lockAsCompleted.
	self assert: boxA isLocked.

	board updateNumberedBoxAfterMove: boxA.

	self deny: boxA isLocked.
]
