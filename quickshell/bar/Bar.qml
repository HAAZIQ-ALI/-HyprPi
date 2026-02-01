import QtQuick 
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland
import Quickshell.Widgets

import qs.bar.barComponents
import qs.core

PanelWindow {
    id: daddy
    
    implicitHeight: 42 
    anchors {
        top: true
        left: true
        right: true
    }

    color: "transparent"

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        
        spacing: 10 

        ClockPill {}
        PlayStatePill {} 
        

	Item { Layout.fillWidth: true }
	WorkspacePill {}
	Item { Layout.fillWidth: true }
        BatteryPill {} 
    }
}
