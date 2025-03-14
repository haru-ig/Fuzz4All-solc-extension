pragma solidity ^0.8.0;
contract SemanticallyEquivalent3 {
    function f() public returns (uint256){
        uint128 x = 5;
        uint256 y = 5;
        return ((x + y) / x - 1);
    }
}
