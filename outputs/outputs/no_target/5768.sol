pragma solidity ^0.8.0;
contract Foo {
    function h() public returns (uint256 x, uint256 z) {
        (x, uint256 z) = (10,  10);
    }
}
