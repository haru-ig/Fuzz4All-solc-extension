pragma solidity ^0.8.0;
contract SemanticallyEquivalentSubroutine {
    function test() public pure returns (uint64 v) {
        return (uint64(uint32(1/2)));
    }
}
