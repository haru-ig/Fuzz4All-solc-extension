pragma solidity ^0.8.0;
contract Main {
    mapping(address => bool) public blackboxes;
    function createBlackboxes (uint _n) public { blackboxes[msg.sender] = false;}
    function updateBlackboxes (address blackbox) public returns (bool) {
        if (blackboxes[blackbox]) { return false; }
        blackboxes[blackbox] = true;
        emit BlackboxCreated(blackbox);
        return true;
    }
}
