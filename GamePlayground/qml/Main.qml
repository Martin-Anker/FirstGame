import VPlay 2.0
import QtQuick 2.0


GameWindow {

    Scene {
        id:scene

        MouseArea {
            anchors.fill: scene.gameWindowAnchorItem
            onPressed: {
                player.push()
            }
        }

        property int gravitydouble: 9
        property string gameState: "play"

        function startgame () {
            scene.gameState = "play"
        }

        function stopgame () {
            scene.gameState = "gameover"
        }

        PhysicsWorld {
            debugDrawVisible: false
            z: 1000
            gravity.y: scene.gameState != "wait" ? scene.gravitydouble : 0
        }


        sceneAlignmentY: "bottom"
        Image {
            id: bg
            source: "../assets/bg.png"
            anchors.horizontalCenter: scene.horizontalCenter
            anchors.bottom: scene.gameWindowAnchorItem.bottom
        }

        Ground {
            anchors.horizontalCenter: scene.horizontalCenter
            anchors.bottom: scene.gameWindowAnchorItem.bottom
        }

        Blanket {
            anchors.horizontalCenter: scene.horizontalCenter
            anchors.top: scene.gameWindowAnchorItem.top
        }

        Pipe {
            id: pipe1
            x: 400
            y: 30+Math.random()*200
        }

        Player {
            id: player
            x: 147
            y: 167
        }

    }

}
