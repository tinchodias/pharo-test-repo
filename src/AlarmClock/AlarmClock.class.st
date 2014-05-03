"
I am a clock.
"
Class {
	#name : #AlarmClock,
	#superclass : #Object,
	#instVars : [
		'elapsedTime',
		'limitTime'
	],
	#category : #AlarmClock
}

{ #category : #accessing }
AlarmClock >> elapsedTime [
	
	^ elapsedTime
]

{ #category : #testing }
AlarmClock >> finished [
	
	^ elapsedTime >= limitTime 
]

{ #category : #initialization }
AlarmClock >> initialize [

	elapsedTime := 0 minutes.

]

{ #category : #accessing }
AlarmClock >> limitTime: aDuration [ 
	
	limitTime := aDuration
]

{ #category : #updating }
AlarmClock >> pass: someTime [

	elapsedTime := elapsedTime + someTime
]
