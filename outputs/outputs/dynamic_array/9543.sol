pragma solidity ^0.8.0;
contract Main2 {
    mapping(uint16=>uint) public blackboxArray;
    constructor () { blackboxArray[msg.sender] = 13;}
    function modifyBlackboxes (mapping(uint16=>uint) memory array, uint offset, uint num) public {
        for (uint i = 0; i < num; i++) {
            array[array.length - i - offset] += 1;
        }
    }
}
