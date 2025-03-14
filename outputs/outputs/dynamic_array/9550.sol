pragma solidity ^0.8.0;
contract Main2 {
    mapping(address => uint[]) public blackboxArray;
    constructor () { blackboxArray[msg.sender][0] = 13;}
    function modifyBlackboxes (uint[] memory array, uint offset) public {
        array[0] += offset/2;
    }
}
