pragma solidity ^0.8.0;
contract ConstantAccessBlock09 {
    uint[99] public constant _data = [16, 16, 17, 18, 19, 64, 65, 66, 254, 254, 254, 254, 16, 16, 16, 16,99, 16,99, 16, 99, 128, 129, 130, 131, 132, 133, 134, 135, 99, 63];
    function test() public returns (uint[99] memory) {
        return _data;
    }
}
