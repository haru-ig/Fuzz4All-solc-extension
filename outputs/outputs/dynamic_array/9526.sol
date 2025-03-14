pragma solidity ^0.8.0;
contract Main {
    mapping(address => uint) public blackboxMapping;
    mapping(address => bool) public blackboxes;
    constructor () {
        mapping (uint => uint[]) private myStaticArray;
        myStaticArray[1] = new uint[](1);
        blackboxes[msg.sender] = true;
    }
    function modifyBlackboxes (address blackbox, uint num) public {
        for (uint i = 0; i < num; i++) {
            blackboxMapping[blackbox] += 1;
        }
        blackboxes[blackbox] = true;
    }
}
