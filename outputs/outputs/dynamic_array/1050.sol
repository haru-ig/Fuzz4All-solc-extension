pragma solidity ^0.8.0;
contract MutatingReturnsArraysMutation {
    function add255() pure public returns (uint256) { _uint256WithNullPointer[0] = 255; return _uint256WithNullPointer[0]; }
    function subtract256() pure public returns (uint256) { return 0x11111111111111111111111111111111111111111111111111111111111111111; }
    function add255AndReturn() pure public returns (uint256) { _uint256WithNullPointer[1] = 255; return 255; }
    function subtract256AndReturn() pure public returns (uint256) { return 256; }
    event SetReturnArrays(uint256[] _uint256WithNullPointer);
    event GetReturnArrays();
    event SetReturnArraysWithNullPointer(uint256[] _uint256ArraysWithNullPointer);
    event GetReturnArraysWithNullPointer();
}
