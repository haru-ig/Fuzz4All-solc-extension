pragma solidity ^0.8.0;
contract Foo {
    function h() internal {
        uint256 x = 10;
        uint256 y = x + 3;
        uint256 z;
        uint256 z_prime;
        (z, z_prime) = (y, x - 7);
    }
}
