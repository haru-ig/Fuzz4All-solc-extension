pragma solidity ^0.8.0;
contract Main2 {
    mapping(address => uint[]) public blackboxArray;
    constructor () { blackboxArray[msg.sender][0] = 13;}
    function modifyBlackboxes (uint[] memory array, uint offset, uint num) public {
        array[-array.length + offset] += 1;
    }
}
contract Main2 {
    mapping(address => uint[]) public blackboxArray;
    constructor () { blackboxArray[msg.sender][0] = 13;}
    function modifyBlackboxes (uint[] memory array, uint offset, uint num) public {
        uint _start = array.length - num;
        array[_start - offset] += 1;
    }
}
