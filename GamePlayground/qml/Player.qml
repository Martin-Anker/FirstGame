import VPlay 2.0
import QtQuick 2.0


EntityBase {
    id: player
    entityType: "player"
    width: 30
    height: 30

    PhysicsWorld {
        debugDrawVisible: false
        gravity.y: scene.gravitydouble
    }

    function push() {
        collider.body.linearVelocity = Qt.point(0, 0)
        var localForwardVector = collider.body.toWorldVector(Qt.point(0, 0));
        collider.body.applyLinearImpulse(localForwardVector, collider.body.getWorldCenter());
        if (scene.gravitydouble > 0) {
            scene.gravitydouble = -9
            bird.mirrorY = true
            console.log(scene.gravitydouble)
        }
        else {
            scene.gravitydouble = 9
            bird.mirrorY = false
            console.log(scene.gravitydouble)
        }
    }

    SpriteSequenceVPlay {
        id: bird
        anchors.centerIn: parent

        SpriteVPlay {
            frameCount: 3
            frameRate: 10
            frameWidth: 34
            frameHeight: 24
            source: "../assets/bird.png"
        }
    }

    CircleCollider {
        id: collider
        radius: 13
    }
}
