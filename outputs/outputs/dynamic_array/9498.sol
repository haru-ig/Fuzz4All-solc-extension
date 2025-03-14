pragma solidity ^0.8.0;
contract Main {
    address public owner;
    mapping(address => bool) public blackboxes;
    address public blackbox;
    event BlackboxCreated (address indexed owner);
    function createBlackboxes (uint _n) public { blackboxes[msg.sender] = false;  blackboxes2[msg.sender] = true;}
    function updateBlackboxes (address blackbox) public returns (bool) {
        if (blackboxes[blackbox]) { return false; }
        if (blackboxes2[blackbox]) {
            blackboxes[blackbox] = true;
            blackboxes2[blackbox] = false;
            emit BlackboxCreated(blackbox);
        }
        return false;
    }
    function setBlackbox() public {
        if (blackbox == address(0)) {
            blackbox = msg.sender;
            emit BlackboxCreated(blackbox);
        }
    }
}
