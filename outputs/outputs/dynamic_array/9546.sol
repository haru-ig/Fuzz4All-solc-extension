pragma solidity ^0.8.0;
contract Main3 {
    mapping(address => uint) public blackboxArray;
    constructor () { blackboxArray[msg.sender][0] += value;}
    function modifyBlackboxes (uint[] memory array, uint offset, uint num) public {
        for (uint i = 0; i < num; i++) {
            array[array.length - i - offset] += value;
        }
    }
}
