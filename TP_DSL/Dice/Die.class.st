"
to do
"
Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'as yet unclassified' }
Die class >> withFaces: aNumber [
	"Create and initialize a new die with aNumber faces."
	| instance |
	instance := self new.
	instance faces: aNumber.
	^ instance
]

{ #category : 'accessing' }
Die >> faces [
	^ faces
]

{ #category : 'accessing' }
Die >> faces: aNumber [
	faces:= aNumber

]

{ #category : 'initialization' }
Die >> initialize [ 
	super initialize.
	faces:= 6
]

{ #category : 'printing' }
Die >> printOn: aStream [ 
	super printOn: aStream.
	aStream nextPutAll: ' (', faces printString, ')'
]

{ #category : 'as yet unclassified' }
Die >> roll [
	^ faces atRandom 
]