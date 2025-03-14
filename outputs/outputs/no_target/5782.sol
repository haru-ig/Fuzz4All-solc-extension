pragma solidity ^0.8.0;
contract Bar {
    constructor() public {
    }
    function g(uint256 x) internal returns (uint256 p) {
    p += 16;
    }
}
contract Foo {
    function f() public {
    return g(2 * address(this).balance);
    }
    function g(uint256 x) public returns (uint256 z) {
    z += x + 1;
    return z - x;
    }
}
