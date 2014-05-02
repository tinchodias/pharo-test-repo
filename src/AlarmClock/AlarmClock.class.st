"
TODO
"
Class {
	#name : #AlarmClock,
	#superclass : #Object,
	#instVars : [
		'elapsedTime'
	],
	#category : #AlarmClock
}

{ #category : #accessing }
AlarmClock >> elapsedTime [
	
	^ elapsedTime
]

{ #category : #initialization }
AlarmClock >> initialize [

	elapsedTime := 0 minutes.

]

{ #category : #updating }
AlarmClock >> pass: someTime [

	elapsedTime := someTime
]
