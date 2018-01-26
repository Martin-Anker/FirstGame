import VPlay 2.0
import QtQuick 2.0

EntityBase {
    id: pipe
    entityType:  "pipe"

    height: 90
    width: 1


    MovementAnimation {
        id:movement
        target: pipe
        property: "x"
        minPropertyValue: -80
        velocity: -120
        running: true
        onLimitReached: {
            pipe.x = 400
            pipe.y = 30+Math.random()*200
        }
    }

    Image {
        id: lowerPipe
        source: "../assets//pipe.png"
        anchors.top: pipe.bottom
        anchors.horizontalCenter: pipe.horizontalCenter
    }

    Image {
        id: upperPipe
        source: "../assets/pipe.png"
        mirror: true
        rotation: 180
        anchors.bottom: pipe.top
        anchors.horizontalCenter: pipe.horizontalCenter
    }
}
