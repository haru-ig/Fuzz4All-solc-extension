pragma solidity ^0.8.0;
contract Foo {
    uint256 constant a = 1;
    uint256 constant b = 2;
    function g(uint256 x) internal returns (uint256 result) {
        result = a / b;
        unchecked {
            a = a % b;
        }
    }
}
