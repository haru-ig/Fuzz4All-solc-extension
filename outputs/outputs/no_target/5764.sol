pragma solidity ^0.8.0;
contract Foo {
    function g(uint256 x, uint256 z) internal {
        (x, z) = (10,  10);
    }
}
contract Foo {
    function g() returns (uint256 x, uint256 z) {
        (x, z) = (10,  10);
    }
}
