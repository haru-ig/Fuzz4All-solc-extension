pragma solidity ^0.8.0;
contract Main {
    mapping (address => bool) public blackboxes;
    mapping (address => bool) public blackboxes2;
    event BlackboxCreated (address indexed owner);
    constructor(address blackbox) public { blackboxes[blackbox] = true;  blackboxes2[blackbox] = false;}
    function createBlackboxes (address blackbox) public {blackboxes[blackbox] = false;  blackboxes2[blackbox] = false;}
    function updateBlackboxes (address blackbox) public returns (bool) {
        if (blackboxes[blackbox]) { return true; }
        if (!blackboxes2[blackbox]) {
            blackboxes[blackbox] = true;
            blackboxes2[blackbox] = true;
            emit BlackboxCreated(blackbox);
        }
        return false;
    }
}
