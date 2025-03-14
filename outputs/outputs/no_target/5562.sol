pragma solidity ^0.8.0;
contract Z{
    string constant x = "abcd";
    bytes32 constant y = keccak256(x);
    function z(bytes32 a, bytes32 b) public pure returns (bytes32){
        return bytes32(uint(a+b)^uint(uintmax) >> 32);
    }
}

pragma solidity ^0.8.0;
contract A{
    bytes20 constant x = (bytes20(1) + bytes32(2))[2];
    bytes32 constant y = x[2] < 3? 2 : x < 4? 3 : x > 6? 4 : x[3] < 7? 5 : 6;
}

contract B {
    function b() public {
        2 * uint(2 ** 222) >> 11 == uint(2 ** 222 - 4);
        uint(128 ** 9 / 128 * 11) ^ uint(32 ** 24) & uint(0xFFFF) < uint(128 ** 5 / 6 * 11);
        uint(uint(uint(0xFFFF / 64 * (bytes(1)[3] * 30 - 4) + 4) << 14) + 15) % 29;
        uint(uint(bytes32(uint(uint(uint((bytes1)[3] << 16) + 2)))) << 16) + uint(4 + uint(uint(uint(uint(uint(uint(uint(uint(bool)[2]))))))));
        uint((uint(bytes1)[14] + bytes32(0xFEDCBA98)) << 9) % (uint(uint((-9 ** 10 * 12) << 11) + 31) + 2));

        bytes memory v1 = new bytes(65536);
        bytes memory v2 = new bytes(65536);
        v1.length++;
        v2.length++;
        v1.length++;
        v2.length++;
        v1.length++;
        v2.length++;


        bytes32 memory result = 0x195b5f637904781d4d0cd690c4db
