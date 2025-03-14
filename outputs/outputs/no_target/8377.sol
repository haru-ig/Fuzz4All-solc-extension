pragma solidity ^0.8.0;
contract Unsafe4 {
    bytes1 a;
    uint256 b;
    constructor() public {
        a = bytes1(1);
        b = type(uint256).max;
    }
    function f() public {
        a = bytes1(0);
    }
}
