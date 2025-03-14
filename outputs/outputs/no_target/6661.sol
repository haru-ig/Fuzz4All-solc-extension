pragma solidity ^0.8.0;
contract SemanticallyEquivalent8 {
    function add(uint x) public pure returns (uint) {
        uint y = add(y) + 10;
        return y;
    }
}
