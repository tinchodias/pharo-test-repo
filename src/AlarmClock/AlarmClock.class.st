"
I represent a clock with limit time. 
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
AlarmClock >> defaultLimitTime [

	^ 25 minutes
]

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

	elapsedTime := 0 seconds.
	limitTime := self defaultLimitTime.
]

{ #category : #accessing }
AlarmClock >> limitTime [
	
	^ limitTime
]

{ #category : #accessing }
AlarmClock >> limitTime: anObject [
	
	limitTime := anObject
]

{ #category : #updating }
AlarmClock >> pass: someTime [

	elapsedTime := elapsedTime + someTime
]
