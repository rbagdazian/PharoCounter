"
`Counter` is a simple concrete class which supports incrementing and
 decrementing.
 Its API is- `decrement` and `increment`- `count`
 Its creation message is `startAt:`
"
Class {
	#name : 'Counter',
	#superclass : 'Object',
	#instVars : [
		'count'
	],
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'accessing' }
Counter >> count [

	^ count
]

{ #category : 'accessing' }
Counter >> count: anObject [

	count := anObject
]

{ #category : 'accessing' }
Counter >> decrement [
	count := count - 1 .
	^ count
]

{ #category : 'accessing' }
Counter >> increment [
	count := count + 1.
	^ count
]

{ #category : 'initialization' }
Counter >> initialize [
 "set the initial value of the value to 0"
 	super initialize.
	count := 0
]

{ #category : 'printing' }
Counter >> printOn: aStream [
 super printOn: aStream.
 aStream nextPutAll: ' with value: ', count printString.
]
