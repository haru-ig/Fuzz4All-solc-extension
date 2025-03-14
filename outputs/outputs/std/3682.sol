pragma solidity ^0.8.0;
contract Arrays {
    function toUInt(uint256 value) public pure returns (uint) {
        return uint(value);
    }
}
contract Test {
    function run() public {
        address[] memory addresses = new address[](2);
        addresses[0] = 0x12349987;
        addresses[1] = 0;
        uint[3] memory uints = new uint[](2);
        uints[0] = 10;
        uints[1] = 20;
        uint uintValue = Convert.length32();
        uint uintValue2 = Arrays.toUInt(uintValue);
        uint[3] memory uintValues = new uint[2];
        uintValues[0] = uintValue2;
        uintValues[1] = uintValue;
        uint[3] memory uints2 = new uint[2];
        uints2[0] = uintValue2;
        uints2[1] = toUInt(1);
        uint[3] memory uintValues2 = new uint[2];
        uintValues2[0] = uintValue2;
        uintValues2[1] = 2;
        uint[3] memory uints3 = new uint[3];
        uints3[0] = uintValue2;
        uints3[1] = toUInt(2);
        uints3[2] = 3;
        uint uintValue3 = Convert.length32();
        uint[2] memory uints4 = new uint(2);
        uints4[0] = uintValue2;
        uints4[1] = uintValue;
        uint uintValue4 = Arrays.toUInt(uintValue);
    }
}
