pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    function add(uint x) public pure returns(uint) {
        uint y = add(x) + 10;
        return y;
    }
    function add(uint y) internal pure returns(uint) {
        return x + 10;
    }
}
