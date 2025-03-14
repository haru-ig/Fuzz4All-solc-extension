pragma solidity ^0.8.0;
contract Main {
    address public owner;
    mapping (address => bool) public blackboxes;
    mapping(address => bool) public blackboxes_;
    event BlackboxCreated (address indexed owner);
    function createBlackboxes (address blackbox) public { blackboxes[blackbox] = true; }
    function updateBlackboxes (address blackbox) public returns (bool) {
        if (blackboxes[blackbox]) { return true; }
        if (!blackboxes_[blackbox]) {
            blackboxes[blackbox] = true;
            blackboxes_[blackbox] = true;
            emit BlackboxCreated(blackbox);
        }
        return false;
    }
