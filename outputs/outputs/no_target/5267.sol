pragma solidity ^0.8.0;
contract MutatedExamples3 {
    function getUint() public pure returns (uint32) {
        uint32 x = 0;
        x += 100;
        return 14;
    }
    function mutate() public returns (uint32) {
        return uint32((uint(2) + 50) / 2) + 1;
    }
}
contract MutatedExamples4 {
    function getUint() public pure returns (uint32) {
        uint32 x = 0;
        x += 100;
        return 14;
    }
    function mutate() public returns (uint32) {
        uint32 tmp = uint32(2) + 50;
        uint32 ret = tmp / 2;
        uint32 delta = ret - uint32(21);
        ret += delta;
        return ret;
    }
}

contract MutatedExamples5 {
    function getUint() public pure returns (uint32) {
        uint32 x = 0;
        x += 100;
        return 18;
    }
    function mutate() public returns (uint32) {
        uint8 tmp = uint8(uint256(2) + 50) / 2;
        uint32 delta = 56 - uint32(uint8(tmp));
        if (tmp < 56) {
            tmp = uint8(tmp + uint32(32 - tmp));
        }
        return 50 + uint32((uint256(40) - uint32(delta)) * 56);
    }
}
