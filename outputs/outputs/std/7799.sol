pragma solidity ^0.8.0;
contract SubRoutine {
    function test() public pure returns (uint64 v) {
        uint64 storage s = v + 2;
        return s;
    }
}
