pragma solidity ^0.8.0;

contract Emulator10 {
    uint x;
    function add(bytes memory x) public pure {
        x.length;
        x;
        msg.sender;
        msg.data.length;
        msg.data;

    }
    function init() public {
        x = 41;
    }
    function write() public pure {}
}
