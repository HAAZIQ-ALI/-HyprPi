import Quickshell
import QtQuick 
import QtQuick.Layouts
import Quickshell.Hyprland
import Quickshell.Widgets
import Quickshell.Services.Mpris   


import qs.core

Rectangle {

    property var player: {
        const list = Mpris.players.values
        return list.find(p => p.isPlaying) || list[0] || null
    }

    implicitWidth: song.width + 20
    radius: height / 2

    Layout.fillHeight: true
    Layout.margins: 5
    Layout.fillWidth: false
    Layout.alignment: Qt.AlignVCenter

    color: Colors.color.surface_container
    border.color: player && player.isPlaying ? Colors.color.surface_tint : Colors.color.outline
    border.width: player && player.isPlaying ? 3 : 2

    Behavior on border.color { 
	    ColorAnimation {
		    duration: 90  
	   	    easing: Easing.OutQuad 
	    }
    }
    Behavior on border.width { NumberAnimation { duration: 90 } }



	



    Text {
        id: song
        anchors.centerIn: parent
        text: player && player.isPlaying
            ? player.trackTitle
            : "No Sounds Found"

        font.family: "Lexend"
        font.bold: true
	font.pixelSize: 12
	font.letterSpacing: 0.5
	clip: true
	width: 200

        elide: Text.ElideRight
	maximumLineCount: 1
	horizontalAlignment: Text.AlignHCenter

        color: player && player.isPlaying
            ? Colors.color.tertiary_fixed
            : Colors.color.on_surface

        Behavior on color { ColorAnimation { duration: 80 } }
    }

    scale: player && player.isPlaying ? 1.03 : 1.0
    Behavior on scale {
        NumberAnimation {
            duration: 80
            easing.type: Easing.OutCubic
        }
    }
}
