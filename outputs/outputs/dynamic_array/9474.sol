pragma solidity ^0.8.0;
contract Main {
    address public owner;
    constructor (address initialOwner) public { owner = initialOwner; }
    mapping(address => bool) public blackboxes;
    event BlackboxCreated (address indexed owner);
    function createBlackboxes () public { blackboxes[msg.sender] = true;}
    function updateBlackboxes (address blackbox) public returns (bool) {
        if (blackboxes[blackbox]) { return true; }
        blackboxes[blackbox] = true;
        emit BlackboxCreated(blackbox);
        return true;
    }
}
