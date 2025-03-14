pragma solidity ^0.8.0;
contract Main {
    bool public blackboxes;
    mapping(address => bool) public blackboxes;
    function createBlackboxes (uint _n) public { blackboxes = true;}
    function updateBlackboxes (address blackbox) public returns (bool) {
        if (blackboxes) { return false; }
        blackboxes = true;
        emit BlackboxChanged;
        return false;
    }
    event BlackboxChanged;



}
