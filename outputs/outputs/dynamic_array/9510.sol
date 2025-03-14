pragma solidity ^0.8.0;
contract Main {
    address public owner;
    mapping (address => bool) public blackboxes;
    mapping (address => bool) public blackboxes2;
    event BlackboxCreated (address indexed owner);
    constructor () { owner = msg.sender; }
    function createBlackboxes (address blackbox) public { blackboxes[blackbox] = true; blackboxes[blackbox2] = false);}
    function updateBlackboxes (address blackbox) public {
        if (blackboxes[blackbox]) { return; }
        blackboxes[blackbox] = true;
        blackboxes[blackbox2] = true;
        emit BlackboxCreated(blackbox);
    }
}
