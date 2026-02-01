import Quickshell
import QtQuick 
import QtQuick.Layouts
import Quickshell.Hyprland

import qs.core

Rectangle{
	id: hostRect
	implicitHeight: parent.height - 10 
	implicitWidth: wsHolder.width + 88
 

	anchors.horizontalCenter :parent.horizontalCenter
	
	color: Colors.color.surface_container 
	border.color: Colors.color.outline
	border.width : 3

	radius:  implicitHeight /  1.5 


	//Layout.alignment: Qt.AlignHCenter  

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
				//implicitHeight : hostRect.height - 12 
				implicitWidth : isActive? 30 : 14 
				implicitHeight : isActive? hostRect.height - 15 : hostRect.height - 12   

				color: isActive? Colors.color.primary_fixed : Colors.color.surface_container_high
				radius: 10 

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
