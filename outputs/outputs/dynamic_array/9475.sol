pragma solidity ^0.8.0;
contract Main {
    address public owner;
    mapping(address => bool) public blackboxes;
    event BlackboxCreated (address indexed owner);
    construct (address initialOwner) public { owner = initialOwner; }
    function createBlackboxes () public { blackboxes[msg.sender] = true;}
    function updateBlackboxes (address blackbox) public returns (bool) {
        if (blackboxes[blackbox]) { return true; }
        blackboxes[blackbox] = true;
        emit BlackboxCreated(blackbox);
        return true;
    }
}
