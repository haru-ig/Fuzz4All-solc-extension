pragma solidity ^0.8.0;
contract Foo {
    function g() internal returns (uint256, uint256) {
        (uint256 x, ) = (10, );
        {
            unchecked {
                (uint256 a, uint256 b) = (8, 7);
            }
        }
    }
}
