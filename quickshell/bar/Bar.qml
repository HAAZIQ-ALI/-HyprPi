import QtQuick 6.5
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland
import Quickshell.Widgets

import qs.bar.barComponents
import qs.core

PanelWindow {
    id: root
    implicitHeight: 40

	color: Colors.color.background
//	color: "#C8FFBE"
    anchors {
        top: true
        left: true
        right: true
    }



    RowLayout{
	    spacing: 10 
	    anchors.fill: parent
	    layoutDirection: Qt.LeftToRight  // Explicit direction
	    anchors {
       left: parent.left
       leftMargin: 10 } 

	
	    //Stuff.ClockPill {}
	    //Stuff.PlayState {} 
	    Item {
       Layout.fillWidth: true
   }

    }
}
