pragma solidity ^0.8.0;
contract Main {
    mapping(address => mapping (uint => uint)) public blackboxMapping;
    mapping(address => bool) public blackboxes;
    constructor () { blackboxes[msg.sender] = true;}
    function modifyBlackboxes (address blackbox, uint num) public {
        address[1] memory array;
        array[1] = blackbox;
        for (uint i = 0; i < num; i++) {
            blackboxMapping[array][1] += 1;
        }
        blackboxes[blackbox] = true;
    }
}
