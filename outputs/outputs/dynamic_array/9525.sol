pragma solidity ^0.8.0;
contract Main {
    mapping(address => uint) public blackboxMapping;
    mapping(address => bool) public blackboxes;
    function modifyBlackboxes (address blackbox, uint num) public{
        for (uint i = 0; i < num; i++) {
            blackboxMapping[blackbox] += 1;
        }
        blackboxes[blackbox] = true;
    }
    function removeBlackboxes (address blackbox, uint num) public {
        if (blackboxes[blackbox]) {
            blackboxMapping[blackbox] -= 1;
        }
        for (uint i = 0; i < num; i++) {
            blackboxes[blackbox] = true;
        }
    }
}
