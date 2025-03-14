pragma solidity ^0.8.0;
contract Semantic0015a {
    function f(uint128 input) public {
        f(uint256(input));
    }
    function f(uint256 input) public {
        input = input+1;
    }
}
