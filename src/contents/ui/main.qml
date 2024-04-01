import QtQml
import QtQuick
import QtQuick.Controls as Controls
import QtQuick.Layouts
import org.kde.kirigami as Kirigami

Kirigami.ApplicationWindow {
    id: root

    title: i18nc("@title:window", "Mancala")

    globalDrawer: Kirigami.GlobalDrawer {
        title: "Mancala"
        titleIcon: "kde"
        actions: [
            Kirigami.Action {
                text: i18n("Modes")
                icon.name: "application-menu"

                Kirigami.Action {
                    text: i18n("Freeplay Mode")
                    onTriggered: showPassiveNotification("Placeholder")
                }

                Kirigami.Action {
                    text: i18n("Two-player Mode")
                    onTriggered: showPassiveNotification("Placeholder")
                }
            },

            Kirigami.Action {
                text: i18n("Save")
                icon.name: "document-save"
                onTriggered: showPassiveNotification("Placeholder")
            },
            Kirigami.Action {
                text: i18n("Load")
                icon.name: "document-open"
                onTriggered: showPassiveNotification("Placeholder")
            },
            Kirigami.Action {
                text: i18n("Settings")
                icon.name: "document-properties"
                onTriggered: showPassiveNotification("Placeholder")
            },
            Kirigami.Action {
                text: i18n("Help")
                icon.name: "help-faq"
                onTriggered: showPassiveNotification("Placeholder")
            },
            Kirigami.Action {
                text: i18n("Exit to Main Menu")
                icon.name: "user-home"
                onTriggered: showPassiveNotification("Placeholder")
            },
            Kirigami.Action {
                text: i18n("Quit")
                icon.name: "application-exit-symbolic"
                onTriggered: Qt.quit()
            }
        ]
    }

    pageStack.initialPage: Kirigami.Page {
        title: i18nc("@title", "Mancala")

        ColumnLayout {
            id: column
            anchors.fill: parent

            Rectangle {
                id: board
                Layout.fillWidth: true
                Layout.fillHeight: true

                border.color: "black"

                color: "floralwhite"

                Controls.Label {
                    text: "Mancala Board"
                    anchors.centerIn: parent
                }
            }

            Controls.GroupBox {
                id: status
                Layout.fillWidth: true

                RowLayout {
                    anchors.fill: parent
                    spacing: 10

                    // Player turn
                    Text {
                        text: i18n("Turn: Player 1")
                        font.bold: true
                    }

                    // Player points
                    Text {
                        text: i18n("Player Stones: 0")
                        font.bold: true
                    }

                    // Opponent points
                    Text {
                        text: i18n("Opponent Stones: 0")
                        font.bold: true
                    }

                    // Time elapsed
                    Text {
                        text: i18n("Time Elapsed: 00:05")
                        font.bold: true
                    }
                }
            }

        }

    }
}
