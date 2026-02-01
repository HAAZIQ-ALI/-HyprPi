import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland
import Quickshell.Widgets
import qs.core

Rectangle {
    id: batteryPill

    // Use implicit sizes so the parent layout knows how big to make it
    implicitWidth: battery.implicitWidth + 30 
    implicitHeight: 32 // Or whatever matches your bar's vibe

    radius: height / 2
    color: Colors.color.surface_container

    border.width: 2
    border.color: Colors.color.outline

    Text {
        id: battery
        anchors.centerIn: parent
	color: Colors.color.on_surface
	text: "100%"

        font.family: "Stack Sans Notch"
        font.pixelSize : 15 
        font.bold : true 
        font.letterSpacing: 0.5 
    }

    Process {
        id: batteryProc
        command: [
            "sh", "-c",
            "cat /sys/class/power_supply/BAT0/capacity"
        ]

stdout: StdioCollector {
    onStreamFinished: battery.text = text.trim() + "%"
}
    }

    Timer {
        interval: 60000 
        running: true
        repeat: true
        // Trigger by setting running to true
        onTriggered: batteryProc.running = true
    }

    // Run once immediately on startup
    Component.onCompleted: batteryProc.running = true
}
