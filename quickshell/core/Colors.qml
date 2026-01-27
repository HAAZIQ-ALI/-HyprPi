
pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io

Singleton {
	property alias color: jsonAdapter.color

	FileView {
		//path: Quickshell.dataPath("core/qs-colors.json")
    		path: Qt.resolvedUrl("qs-colors.json") 
		watchChanges: true
		onFileChanged: reload()

		JsonAdapter {
			id: jsonAdapter;
			
			readonly property Color color: Color {}
	}
	}

	component Color: JsonObject {
		property color background: "transparent"
		property color error: "transparent"
		property color error_container: "transparent"
		property color inverse_on_surface: "transparent"
		property color inverse_primary: "transparent"
		property color inverse_surface: "transparent"
		property color on_background: "transparent"
		property color on_error: "transparent"
		property color on_error_container: "transparent"
		property color on_primary: "transparent"
		property color on_primary_container: "transparent"
		property color on_primary_fixed: "transparent"
		property color on_primary_fixed_variant: "transparent"
		property color on_secondary: "transparent"
		property color on_secondary_container: "transparent"
		property color on_secondary_fixed: "transparent"
		property color on_secondary_fixed_variant: "transparent"
		property color on_surface: "transparent"
		property color on_surface_variant: "transparent"
		property color on_tertiary: "transparent"
		property color on_tertiary_container: "transparent"
		property color on_tertiary_fixed: "transparent"
		property color on_tertiary_fixed_variant: "transparent"
		property color outline: "transparent"
		property color outline_variant: "transparent"
		property color primary: "transparent"
		property color primary_container: "transparent"
		property color primary_fixed: "transparent"
		property color primary_fixed_dim: "transparent"
		property color scrim: "transparent"
		property color secondary: "transparent"
		property color secondary_container: "transparent"
		property color secondary_fixed: "transparent"
		property color secondary_fixed_dim: "transparent"
		property color shadow: "transparent"
		property color surface: "transparent"
		property color surface_bright: "transparent"
		property color surface_container: "transparent"
		property color surface_container_high: "transparent"
		property color surface_container_highest: "transparent"
		property color surface_container_low: "transparent"
		property color surface_container_lowest: "transparent"
		property color surface_dim: "transparent"
		property color surface_tint: "transparent"
		property color surface_variant: "transparent"
		property color tertiary: "transparent"
		property color tertiary_container: "transparent"
		property color tertiary_fixed: "transparent"
		property color tertiary_fixed_dim: "transparent"
	}

	
}
