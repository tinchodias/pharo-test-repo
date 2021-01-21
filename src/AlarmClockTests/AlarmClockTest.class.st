Class {
	#name : #AlarmClockTest,
	#superclass : #TestCase,
	#instVars : [
		'clock'
	],
	#category : #AlarmClockTests
}

{ #category : #running }
AlarmClockTest >> setUp [

	clock := AlarmClock new.
]

{ #category : #tests }
AlarmClockTest >> test01InitialState [

	self assert: clock elapsedTime isZero.
	
]

{ #category : #tests }
AlarmClockTest >> test02PassSomeTime [

	clock pass: 10 minutes.

	self assert: clock elapsedTime equals: 10 minutes.
	
	clock pass: 7 seconds.

	self assert: clock elapsedTime equals: 17 secnods.
	
]

{ #category : #tests }
AlarmClockTest >> test03LimitTime [

	clock limitTime: 25 minutes.
	
	self deny: clock finished.
	
	clock pass: 25 minutes.
	
	self assert: clock finished.
]

{ #category : #tests }
AlarmClockTest >> test04AdjustLimitTime [

	clock pass: 25 minutes.
	
	self assert: clock finished.
	
	clock limitTime: 42 minutes.
	
	self deny: clock finished.
]
