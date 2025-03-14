pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v1 {
    uint160 constant public value22 = 203;
    uint256 constant public value23 = 208;
    uint256 constant public value20 = 200;
    function test22(uint160 b) public view returns (uint160) {
    }
    function test23(uint160 b) public view returns (uint160) {
    }
    function test20(uint160 b) public returns (uint160) {
        uint160 r = test22(b) + test23(b);
        return r;
    }
}
