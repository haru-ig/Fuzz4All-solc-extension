pragma solidity ^0.8.0;
contract Foo1 {
    function g() internal returns (uint256 x, uint256 z) {
        uint256 x;
        x = uint256(10);
        (uint256 x, uint256 z) = (x, uint256(10));
        x = uint256(-10);
        (uint256 x, uint256 z) = (x, uint256(10));

    }
}
