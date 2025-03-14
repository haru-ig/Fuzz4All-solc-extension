pragma solidity ^0.8.0;
contract Foo {
    function g() internal returns (uint256 x) {
        (uint256 x) = (-10);
    }
}
