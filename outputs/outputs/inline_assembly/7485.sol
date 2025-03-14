pragma solidity ^0.8.0;


contract SolidityExamples {

    string[] public strings;
    uint[] public uints;
    uint[] public uintsArray;
    uint[] public uintsArrayVar;


    constructor() {}


    function setStrings(string[] memory strs) public {
        strings = strs;
    }


    function getStrings() public returns (string[] memory) {
        return strings;
    }


    function setUints(uint[] memory uints) public {
        uints = uints;
    }


    function getUints() public returns (uint[] memory) {
        return uints;
    }


    function setUintsVar(uint[] memory) public pure {
        uintsArrayVar = uints;
    }


    function getUintsVar() public pure returns (uint[] memory) {
        return uintsArrayVar;
    }



    function validLength(uint _len) public pure returns (bool) {
        return _len >= 0;
    }
}
