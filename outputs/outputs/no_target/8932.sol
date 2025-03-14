pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v1 {
    uint constant constantMax = type(uint).max;
    uint constant max_int = constantMax + 1;

    function test (uint i, uint j) public pure returns (uint) {
        if (i < -1) {
            uint31 x = (uint31)(-4294967295);
            (uint32 y, ) = uint32(x);
            return int(uint32(-1));
        }
        return i - j + i * 2;
    }





    function test (uint i, uint j) public pure returns (uint) {
        uint31 y = 4294967295;
        (uint32 y_, ) = uint32(y);
        return int(uint32(y) + 1);
    }

    function test (uint i, uint j) public pure returns (uint) {
        uint31 y = 4294967295;
        (uint32 y_, ) = uint32(y);
        return int(uint32(y) >> (i < -1? 31 : 32));
    }
}
