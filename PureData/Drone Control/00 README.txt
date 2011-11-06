Drone Control

Drone Control is a set of three PureData patches that make it easy to play very
long notes.

Some synthesizers provide a latch or audition button that holds the current note
while you listen and tweak your patch. Not all synthesizers provide latch
functionality. The obvious DAW solution of creating a 100-bar long note works
nicely until you want to start in the middle of that note.


Drone.pd - this is a simple one note drone. You have to change the Note Number
message box to change notes. You need to manually turn on and off each note.

PolyDrone Scroll - this is a more sophisticated patch that allows you to
generate up to three notes. The buttons to the left will activate and deactivate
all three drones. The on/off buttons inside each abstraction controls each
individual note. The horizontal scroll bars allow you to quickly pick the MIDI
note you want. When you move the horizontal scrollbar, old notes are turned off
as new notes are turned on.

PolyDrone Note - this variant of PolyDrone Scroll replaces the scroll bar with
two radio buttons. The upper radio buttons select the note's octave. The lower
radio buttons allow you to select a note within the selected octave. As in
PolyDrone Scroll, old notes are turned off when you select a new note.

Either PolyDrone patch can be easily modified to support playing more than
three notes at a time.


More information about PureData can be found here:
http://puredata.info/

James McNalley
http://soundcloud.com/jamesmcn
http://obscurerobot.com/