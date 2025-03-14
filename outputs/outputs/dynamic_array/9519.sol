pragma solidity ^0.8.0;
contract Main {
    mapping(address => bool) public blackboxes;
    mapping(address => uint) public blackboxMapping;
    constructor () { blackboxes[msg.sender] = true;}
    function modifyBlackboxes (address blackbox, uint num) public {
        for (uint i = 0; i < num; i++) {
            blackboxMapping[blackbox] += 1;
        }
        blackboxes[blackbox] = true;
    }
}
