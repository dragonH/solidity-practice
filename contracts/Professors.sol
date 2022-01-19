// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import './Hogwards.sol';

contract Professors is Hogwards {
    function minusHouseScore(string memory houseName, uint scoreDiff) public {
        minusScore(houseName, scoreDiff);
    }
    function addHouseScore(string memory houseName, uint scoreDiff) public {
        addScore(houseName, scoreDiff);
    }
    function showScores() external view returns (string memory, uint, string memory, uint, string memory, uint, string memory, uint) {
        return (
            "Gryffindor: ", houseScore.Gryffindor,
            "Hufflepuff: ", houseScore.Hufflepuff,
            "Ravenclaw: ", houseScore.Ravenclaw,
            "Slytherin: ", houseScore.Slytherin
        );
    }
}