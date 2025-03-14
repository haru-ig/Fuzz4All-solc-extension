pragma solidity ^0.8.0;
contract Mutate_0008 {
    function test() public {
        int256 one = 1;
        one = one + 5;
        uint256 two = one / 5;
        one = 1;
        one = one - 5;
        uint128 three = uint128(one) / 5;
    }
}
