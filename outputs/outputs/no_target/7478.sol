pragma solidity ^0.8.0;
contract Mutant_old {
    function f(uint x) public pure returns (uint256) {
        return notUsedReturn(x);
    }
    function f(uint x, uint y) public pure returns (uint256) {
        return notUsedReturn(x);
    }
    function f(uint x, uint y, uint z) public pure returns (uint256) {
        return notUsedReturn(x);
    }
    function f(uint x, uint y, uint z, uint w) public pure returns (uint256) {
        return notUsedReturn(x);
    }
}
