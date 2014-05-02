Class {
	#name : #AlarmClockTest,
	#superclass : #TestCase,
	#instVars : [
		'clock'
	],
	#category : #AlarmClock
}

{ #category : #running }
AlarmClockTest >> setUp [

	clock := AlarmClock new.
]

{ #category : #tests }
AlarmClockTest >> test01InitialState [

	self assert: clock elapsedTime equals: 0 minutes.
	
]

{ #category : #tests }
AlarmClockTest >> test02PassSomeTime [

	clock pass: 10 minutes.

	self assert: clock elapsedTime equals: 10 minutes.
	
	clock pass: 5 minutes.

	self assert: clock elapsedTime equals: 15 minutes.

]

{ #category : #tests }
AlarmClockTest >> test03PassLimitTime [

	clock limitTime: 25 minutes.

	self deny: clock finished.

	clock pass: 25 minutes.

	self assert: clock finished.
	
]

{ #category : #tests }
AlarmClockTest >> test04AdjustLimitTime [

	clock limitTime: 25 minutes.
	clock pass: 25 minutes.

	self assert: clock finished.

	clock limitTime: 42 minutes.

	self deny: clock finished.
	
]
