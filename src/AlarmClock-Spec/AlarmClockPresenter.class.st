"
A presenter for an instance of AlarmClock.
"
Class {
	#name : #AlarmClockPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'model',
		'elapsedTimeLabel',
		'finishedLabel'
	],
	#category : #'AlarmClock-Spec'
}

{ #category : #specs }
AlarmClockPresenter class >> defaultSpec [
	^ SpBoxLayout newVertical
		add: #elapsedTimeLabel
			withConstraints: [ :constraints | constraints height: self labelHeight ];
		add: #finishedLabel
			withConstraints: [ :constraints | constraints height: self labelHeight ];
		yourself
]

{ #category : #examples }
AlarmClockPresenter class >> example1 [
	self new
		model: (AlarmClock new pass: 5 minutes; yourself);
		openWithSpec
]

{ #category : #accessing }
AlarmClockPresenter >> elapsedTimeString [
	^ model elapsedTime asString
]

{ #category : #accessing }
AlarmClockPresenter >> finishedString [
	^ model finished
		ifTrue: [ 'FINISHED' ]
		ifFalse: [ 'NOT FINISHED' ]
]

{ #category : #initialization }
AlarmClockPresenter >> initializePresenters [ 
	elapsedTimeLabel := self newLabel.
	finishedLabel := self newLabel.
]

{ #category : #initialization }
AlarmClockPresenter >> model: anAlarmClock [
	model := anAlarmClock.
	self refresh
]

{ #category : #initialization }
AlarmClockPresenter >> refresh [
	elapsedTimeLabel label: self elapsedTimeString.
	finishedLabel label: self finishedString
]
