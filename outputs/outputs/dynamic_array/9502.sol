pragma solidity ^0.8.0;
contract Main1 {
    address public owner;
    mapping(address => bool) public blackboxes;
    event BlackboxCreated (address indexed owner);
    function createBlackboxes (uint _n) public { blackboxes[msg.sender] = true; }
    function updateBlackboxes (address blackbox) public returns (bool) {
        if (blackboxes2[blackbox]) {
            blackboxes[blackbox] = true;
            blackboxes2[blackbox] = false;
            emit BlackboxCreated(blackbox);
        }
        return true;
    }
}
