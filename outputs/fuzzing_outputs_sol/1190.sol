pragma solidity ^0.8.0;
contract SemanticsEquivalence6 {
    uint16 internal constant B = 37;
    uint256 internal constant C = 23;
    function run() public pure returns (uint16) { return B - C; }
}
