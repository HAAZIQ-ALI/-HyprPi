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

	color: "transparent"
	//color: Colors.color.surface_container_low
    anchors {
	    top: true
	    //bottom: true
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

	
	    ClockPill {}
	    PlayStatePill {} 
	    Item { Layout.fillWidth: true }
	    WorkspacePill{}


	    Item { Layout.fillWidth: true }

	    Item { Layout.fillWidth: true }
    }

    
}
