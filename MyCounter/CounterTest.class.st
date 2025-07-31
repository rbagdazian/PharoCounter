Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'tests' }
CounterTest >> testAlternateCreationMethod [
 self assert: ((Counter startingAt: 19) increment ; count) equals: 20
]

{ #category : 'tests' }
CounterTest >> testCountIsSetAndRead [
	| c |
	c := Counter new.
	c count: 7 .
	self assert: c count equals: 7
]

{ #category : 'tests' }
CounterTest >> testCounterStartingAt5 [
 self assert: (Counter startingAt: 5) count equals: 5
]

{ #category : 'tests' }
CounterTest >> testDecrement [
 | c |
 c := Counter new.
 c count: 5 ; decrement; decrement.
 self assert: c count equals: 3
]

{ #category : 'tests' }
CounterTest >> testIncrement [
 | c |
 c := Counter new.
 c count: 0 ; increment; increment.
 self assert: c count equals: 2
]

{ #category : 'tests' }
CounterTest >> testInitialize [
 self assert: Counter new count equals: 0
]

{ #category : 'tests' }
CounterTest >> testPrintOn [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	| s |
	s := Counter new printString.
	self assert: s equals: 'a Counter with value: 0'
]
