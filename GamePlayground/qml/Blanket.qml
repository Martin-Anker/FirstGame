import QtQuick 2.0
import VPlay 2.0

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
        mirror: true
        rotation: 180

        SpriteVPlay {
            frameCount: 2
            frameRate: 4
            frameWidth: 368
            frameHeight: 50
            source: "../assets/land.png"
        }
    }
}
