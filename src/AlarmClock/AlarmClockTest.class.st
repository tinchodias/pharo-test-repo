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

	self assert: clock limitTime > 0 seconds.
	self assert: clock elapsedTime equals: 0 seconds.
	self deny: clock finished.
	
]

{ #category : #tests }
AlarmClockTest >> test02PassSomeTime [

	clock pass: 10 minutes.

	self assert: clock elapsedTime equals: 10 minutes.
	self deny: clock finished.
	
]

{ #category : #tests }
AlarmClockTest >> test03PassLimitTime [

	clock pass: clock limitTime.

	self assert: clock finished.
	
]

{ #category : #tests }
AlarmClockTest >> test04AdjustLimitTime [

	clock pass: clock limitTime.

	self assert: clock finished.

	clock limitTime: clock limitTime * 2.

	self deny: clock finished.
	
]
