pragma solidity ^0.8.0;
contract Contract { function isBugger()
    public pure
        returns (bytes memory)
    { uint value = 0x01FF; if (value >= 0x01FF) { return "Hello world!"; _; } } return "Hello world!"; }
