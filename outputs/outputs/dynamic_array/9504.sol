pragma solidity ^0.8.0;

contract Main {
    struct Blackbox {
        bool blackbox;
    }

    address public owner;
    struct CallerStruct {
        bool blackbox;
    }

    mapping(address => CallerStruct) public blackboxes;

    function blackboxes2(address blackbox) public returns (bool) {
        CallerStruct calldataCallerStruct = blackboxes[block.coinbase];
        return calldataCallerStruct.blackbox;
    }

    event BlackboxCreated (address indexed owner);
    function createBlackboxes (uint _n) public { blackboxes[msg.sender] = false;  blackboxes2[msg.sender] = false;}

    function updateBlackboxes (address blackbox) public returns (bool) {
        if (blackboxes[blackbox]) return true;
        CallerStruct calldataCallerStruct = blackboxes[msg.sender];
        calldataCallerStruct.blackbox = true;
        emit BlackboxCreated(blackbox);
        return true;
    }
}
