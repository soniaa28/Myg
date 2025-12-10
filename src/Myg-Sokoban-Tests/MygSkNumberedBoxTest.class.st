Class {
	#name : 'MygSkNumberedBoxTest',
	#superclass : 'TestCase',
	#category : 'Myg-Sokoban-Tests',
	#package : 'Myg-Sokoban-Tests'
}

{ #category : 'tests' }
MygSkNumberedBoxTest >> testBoardIsFinishedOnlyWhenAllNumberedBoxesLocked [
	| board boxA boxB targetA targetB |
	board := MygSkBoard new.

	boxA := MygSkBoxA new.
	targetA := MygSkTargetA new.
	boxA background: targetA.

	boxB := MygSkBoxB new.
	targetB := MygSkTargetB new.
	boxB background: targetB.

	board boxes: (OrderedCollection with: boxA with: boxB).

	self deny: boxA isLocked.
	self deny: boxB isLocked.
	self deny: board isFinished.

	"Блокируем только A – уровень ещё НЕ закончен"
	board updateNumberedBoxAfterMove: boxA.
	self assert: boxA isLocked.
	self deny: boxB isLocked.
	self deny: board isFinished.

	board updateNumberedBoxAfterMove: boxB.
	self assert: boxA isLocked.
	self assert: boxB isLocked.
	self assert: board isFinished.
]

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
