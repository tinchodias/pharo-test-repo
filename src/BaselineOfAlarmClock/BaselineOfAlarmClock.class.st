Class {
	#name : #BaselineOfAlarmClock,
	#superclass : #BaselineOf,
	#category : #BaselineOfAlarmClock
}

{ #category : #baseline }
BaselineOfAlarmClock >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec
				package: 'AlarmClock';
				package: 'AlarmClockTests'
					with: [ spec requires: #('AlarmClock') ] ]
]
