pragma solidity ^0.8.0;
contract Main {
    address public owner;
    mapping(address => bool) public blackboxes;
    mapping (address => bool) public blackboxes2;
    function createBlackboxes (uint _n) public { blackboxes[msg.sender] = false;  blackboxes2[msg.sender] = true;}
    function updateBlackboxes (address blackbox) public updateBlackboxesTrue2() returns (bool) {
        if (blackboxes[blackbox]) { return false; }
        if (blackboxes2[blackbox]) {
            blackboxes[blackbox] = true;
            blackboxes2[blackbox] = false;
            emit BlackboxCreated(blackbox);
        }
        return false;
    }
    function updateBlackboxesTrue2 () public {
        blackboxes[msg.sender] = true;
    }
}
