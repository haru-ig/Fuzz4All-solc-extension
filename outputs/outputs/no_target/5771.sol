pragma solidity ^0.8.0;
contract Foo {
    function f(uint256 x) public pure returns (uint256 y) {
        return x + x + x + x;
    }
}
