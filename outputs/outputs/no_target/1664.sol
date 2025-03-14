pragma solidity ^0.8.0;
contract Semantic0015b {
    uint256 constant ONE = 1;
    uint256 constant ZERO = 0;
    uint256 const ZERO250 = 2**250;
    function f(uint128 input) public pure {
        require(input > ZERO, "f");
    }
    function f(uint256 input) public pure {
        require(input > ZERO250, "f");
    }
}
