pragma solidity ^0.8.0;
contract Main {
    address public owner;
    mapping(address => bool) public blackboxes;
    event BlackboxCreated (address indexed owner);
    function createBlackboxes() public { blackboxes[msg.sender] = false;}
    function updateBlackboxes(address blackbox) public returns (bool) {
        if (blackboxes[blackbox]) {
            return false;
        }
        blackboxes[blackbox] = true;
        emit BlackboxCreated(blackbox);
        return false;
    }
}<jupyter_output><empty_output>
