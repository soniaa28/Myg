Class {
	#name : 'MygSkTeleport',
	#superclass : 'MygSkObject',
	#category : 'Myg-Sokoban-Model',
	#package : 'Myg-Sokoban',
	#tag : 'Model'
}

{ #category : 'default encoding' }
MygSkTeleport class >> textualMapCharacter [ 

	"Символ телепорта в текстовой карте уровня"
	^ $T

]

{ #category : 'accessing' }
MygSkTeleport >> backgroundRepresentation [
    ^ MygSkBoxElement teleportIcon

]

{ #category : 'action' }
MygSkTeleport >> bringIn: aSkMovable going: aDirection [ 

	"Разрешаем заходить на телепорт как на обычный пол.
	Если заходит не игрок (ящик и т.п.) – ведём себя как обычная плитка.
	Если заходит игрок – сначала обычный ход (счётчик ходов и т.п.),
	потом выполняем телепорт."

	(aSkMovable isPlayer) ifFalse: [
		^ super bringIn: aSkMovable going: aDirection ].

	"Сначала обычный ход на эту клетку"
	(super bringIn: aSkMovable going: aDirection) ifFalse: [ ^ false ].

	"После успешного хода – телепортируем игрока"
	self teleportPlayer: aSkMovable.
	^ true
]

{ #category : 'action' }
MygSkTeleport >> teleportPlayer: aPlayer [ 

	| board previousPosition teleports other |
	board := self board.
	teleports := board teleports.
	teleports size < 2 ifTrue: [ ^ self ]. "нет пары – ничего не делаем"

	"Находим вторую телепорт-плитку (не this)"
	other := teleports detect: [ :each | each ~~ self ] ifNone: [ ^ self ].

	"Текущая позиция игрока (он уже стоит на этом телепорте)"
	previousPosition := aPlayer position.

	"Переносим игрока на позицию другого телепорта.
	Здесь мы НЕ увеличиваем счётчик ходов – ход уже посчитан в super bringIn:going:"
	aPlayer basicPosition: other position.
	board updatePositionOf: aPlayer from: previousPosition

]
