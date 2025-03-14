pragma solidity ^0.8.0;
contract Foo {
    function g() internal returns (uint256, bytes14) {
        uint256 x = 8;
        bytes14 y;
        (, y) = (x, x);
    }
}
