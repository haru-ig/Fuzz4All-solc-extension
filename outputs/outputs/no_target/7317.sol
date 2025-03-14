pragma solidity ^0.8.0;
contract NewMutatedAbiCoder {
    function test1(uint a) public pure returns (uint, uint) {
        return 1, 2;
    }
    function test2(uint a) public pure returns (uint, uint) {
        return -1, 2;
    }
}
