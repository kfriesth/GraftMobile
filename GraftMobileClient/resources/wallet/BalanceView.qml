import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Layouts 1.3
import "../"

ColumnLayout {
    property string gText
    property string moneyText
    property int amountGraft: 0
    property int amountMoney: 0

    spacing: 50
    Layout.fillWidth: true
    anchors.leftMargin: 100
    anchors.rightMargin: 100

    Image {
        id: graftWalletLogo
        Layout.alignment: Qt.AlignCenter
        Layout.topMargin: 50
        width: 150
        height: 150
        source: "/imgs/graft_wallet_logo.png"
    }

    ColumnLayout {
        spacing: 20
        Layout.alignment: Qt.AlignCenter

        Text {
            Layout.alignment: Qt.AlignCenter
            font.pointSize: 15
            font.bold: true
            color: "grey"
            text: qsTr("Balance")
        }

        Text {
            Layout.alignment: Qt.AlignCenter
            font.pointSize: 19
            color: "black"
            text: gText = amountGraft + "g"
        }

        Text {
            Layout.alignment: Qt.AlignCenter
            font.pointSize: 15
            font.bold: true
            color: "grey"
            text: moneyText = amountMoney + "USD"
        }
    }

    RoundButton {
        id: buttonPay
        topPadding: 15
        bottomPadding: 15
        highlighted: true
        Material.elevation: 0
        Material.accent: "#757575"
        Layout.preferredWidth: parent.width
        Layout.alignment: Qt.AlignCenter
        text: qsTr("Pay")
        font {
            family: "Liberation Sans"
            pixelSize: 18
            capitalization: Font.MixedCase
        }
    }
}
