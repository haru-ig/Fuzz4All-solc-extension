pragma solidity ^0.8.0;
contract A {
    function x() internal pure returns (uint256 n) {
        n = 42;
    }

    function d() internal pure {}

    function f() public view returns (uint256 n) {
        n = 42;
    }
}
