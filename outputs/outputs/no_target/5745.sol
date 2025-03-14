pragma solidity ^0.8.0;
contract Baz2 {
    bytes1 x;
    constructor() { x = 0x01; }
    receive() external { }
}
