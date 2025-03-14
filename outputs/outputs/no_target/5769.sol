pragma solidity ^0.8.0;
contract Foo {
    function g() internal returns (uint256 x, uint256 z) {
        (x, z) = (101, 201);
    }
}

pragma solidity 0.8.0;
contract Foo {
    function g() internal returns (uint256 x, uint256 z) {
        (x, z) = (101, 201);
    }
}
