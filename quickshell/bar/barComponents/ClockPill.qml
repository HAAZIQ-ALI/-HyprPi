import Quickshell
import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland
import Quickshell.Widgets
//import "../../Core" as Core

import qs.core
Rectangle{
	SystemClock{ id: clock ; precision: SystemClock.Minutes ;}


	Layout.preferredWidth: clocktext.implicitWidth + 20
	//implicitWidth: clocktext.implicitWidth + 20 
	radius: height /2
	
	Layout.preferredHeight: parent.height -10
	Layout.alignment: Qt.AlignVCenter

	color: Colors.color.surface_container 

	border.width: 2
	border.color: Colors.color.outline

	Text{
		id:clocktext
		anchors.centerIn: parent
		text: Qt.formatDateTime(clock.date , "hh:mm")
		font.family: "Stack Sans Notch"
	        font.letterSpacing: 0.6
		font.bold: true 
		font.pixelSize: 15
		color: Colors.color.on_surface
		horizontalAlignment: Text.AlignHCenter
	}
}

