import Quickshell
import QtQuick 
import QtQuick.Layouts
import Quickshell.Hyprland

import qs.core

Rectangle{
	id: hostRect
	implicitHeight: 30 
	implicitWidth: wsHolder.width + 68 
	
	color: Colors.color.surface_container 
	border.color: Colors.color.outline
	border.width : 3

	radius:  implicitHeight /  1.5 


	Layout.alignment: Qt.AlignHCenter  // Centers this item horizontally within the layout

	Behavior on implicitWidth{
		NumberAnimation{
			duration: 50 
			easing: Easing.OutQuad
		}
	}

	Behavior on x {
		NumberAnimation{
			duration : 100 
		}
	}

	RowLayout{
		id:wsHolder
		Layout.minimumWidth: 144
		spacing: 4 
		anchors.centerIn: parent

		Repeater{
			model: Hyprland.workspaces

			Rectangle{
				id: workspace 
				property bool isActive : Hyprland.focusedWorkspace?.id === ( index + 1 )
				property var whichWorkspace : Hyprland.workspaces.values.find ( w => w.id === index + 1 )
				Layout.alignment : Qt.AlignVCenter
				implicitHeight : hostRect.height - 8
				implicitWidth : isActive? 28 : 14 

				color: isActive? Colors.color.primary_fixed : Colors.color.surface_container_high
				radius:  12

				Behavior on color {
					ColorAnimation{
						duration: 100 
						easing: Easing.OutQuad
					}
				}

				Behavior on implicitWidth{
						NumberAnimation{
							duration: 100 
							easing: Easing.OutQuad
						}
					
				}



			}
		}
	}
}
