pragma solidity ^0.8.0;
contract Main {
    address public owner;
    mapping(address => bool) public blackboxes;
    mapping (address => bool) public blackboxes2;
    event BlackboxCreated (address indexed owner);
    function updateBlackboxes (address blackbox) public {
        if (!blackboxes[blackbox]) { return; }
        blackboxes[blackbox] = false;
        blackboxes2[blackbox] = true;
        emit BlackboxCreated(blackbox);
    }
}
