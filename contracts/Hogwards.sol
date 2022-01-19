// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Hogwards {
    struct HouseScore {
        uint Gryffindor;
        uint Hufflepuff;
        uint Ravenclaw;
        uint Slytherin;
    }
    bytes32[] houseNameList = [
        keccak256(bytes("Gryffindor")),
        keccak256(bytes("Hufflepuff")),
        keccak256(bytes("Ravenclaw")),
        keccak256(bytes("Slytherin"))
    ];
    HouseScore internal houseScore;

    constructor() {
        houseScore = HouseScore({
            Gryffindor: 0,
            Hufflepuff: 0,
            Ravenclaw: 0,
            Slytherin: 0
        });
    }

    function minusScore(string memory houseName, uint scoreDiff) internal {
        bytes32 targetHouseName = keccak256(bytes(houseName));
        for (uint index = 0; index < houseNameList.length; index += 1) {
            if (targetHouseName == houseNameList[0] && houseScore.Gryffindor >= scoreDiff) {
                houseScore.Gryffindor -= scoreDiff;
            } else if (targetHouseName == houseNameList[1] && houseScore.Hufflepuff >= scoreDiff) {
                houseScore.Hufflepuff -= scoreDiff;
            } else if (targetHouseName == houseNameList[2] && houseScore.Ravenclaw >= scoreDiff) {
                houseScore.Ravenclaw -= scoreDiff;
            } else if (targetHouseName == houseNameList[3] && houseScore.Slytherin >= scoreDiff) {
                houseScore.Slytherin -= scoreDiff;
            } else {
                revert("House name is not exist");
            }
        }
    }

    function addScore(string memory houseName, uint scoreDiff) internal {
        bytes32 targetHouseName = keccak256(bytes(houseName));
        for (uint index = 0; index < houseNameList.length; index += 1) {
            if (targetHouseName == houseNameList[0]) {
                houseScore.Gryffindor += scoreDiff;
            } else if (targetHouseName == houseNameList[1]) {
                houseScore.Hufflepuff += scoreDiff;
            } else if (targetHouseName == houseNameList[2]) {
                houseScore.Ravenclaw += scoreDiff;
            } else if (targetHouseName == houseNameList[3]) {
                houseScore.Slytherin += scoreDiff;
            } else {
                revert("House name is not exist");
            }
        }
    }
}

