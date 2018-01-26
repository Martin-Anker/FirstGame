import VPlay 2.0
import QtQuick 2.0

EntityBase {
    id: ground
    entityType: "ground"
    width: sprite.width
    height: sprite.height

    BoxCollider {
        anchors.fill: parent
        bodyType: Body.Static
    }

    SpriteSequenceVPlay {
        id: sprite

        SpriteVPlay {
            frameCount: 2
            frameRate: 4
            frameWidth: 368
            frameHeight: 90
            source: "../assets/land.png"
        }
    }
}
