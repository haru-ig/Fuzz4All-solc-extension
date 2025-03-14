pragma solidity ^0.8.0;
contract Example10 {
    struct Example10S {
        address addr;
        uint8 a;
        uint8 b;
    }

    function add(Example10S storage s) public view {
        s.addr = msg.sender;
        s.a = 1;
    }
}
