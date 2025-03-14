pragma solidity ^0.8.0;
contract MutatedMutable {
    uint256 a;
    function set() public pure returns(Mutated) {
        return new Mutated();
    }
    function _set(uint256 b) internal{ if(a == 0) { a = b; } }
    function add() public { _set(_set(0)); }
}
