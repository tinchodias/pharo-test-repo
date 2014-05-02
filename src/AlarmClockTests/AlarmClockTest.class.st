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

	self assert: clock elapsedTime equals: 0 minutes.
	
]

{ #category : #tests }
AlarmClockTest >> test02PassSomeTime [

	clock pass: 10 minutes.

	self assert: clock elapsedTime equals: 10 minutes.
	
]
