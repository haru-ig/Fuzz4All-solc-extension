pragma solidity ^0.8.0;
contract Main4 {
    mapping(address => bool[]) public blackboxArray;
    constructor () { blackboxArray[msg.sender][0] = true;}
    function modifyBlackboxes (bool[] memory array, uint offset, uint num) public {
        for (uint i = 0; i < num; i++) {
            array[array.length - i - offset] =! array[array.length - i - offset];
        }
    }
}
