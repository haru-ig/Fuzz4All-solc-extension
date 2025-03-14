pragma solidity ^0.8.0;
contract MyContract {
    mapping(uint256 => uint256) map;
    mapping(address => uint160) map1;
    mapping(uint256 => bytes) bytesMap;
    constructor (uint256 _amount) {
        uint256 array1[5] = [1, 2, 3, 4, 5];

        bytesMap[1] = "This is the string 1";
        bytesMap[2] = "This is the string 2";
        bytes[] memory array2;
        array2 = new bytes[](3);
        array2[0] = "String 3";
        bytesMap[3] = bytes("This is the string 3");
        bytesMap[4] = "This is the string 4";
        bytes[] memory array3;
        array3["string 4"] = "This is the string 4";
        bytesMap[5] = "This is the string 5";
        uint256[5] memory array4;
        array4[0] = 1;
        array4[1] = 1 & 2;
        array4[2] = 1 ^ 3;
        array4[3] = 0 | 5;
        array4[4] = 7 >> 1;

        address[2] memory array5;
        map["address 1"] = 20;
        map["address 2"] = 22;
        map["address 3"] = 41;
        map1["address 2"] = 30;
        map1["address 3"] = 35;
        map["address 4"] = 61;
        map["address 5"] = 62;
        map["address 6"] = 66;
        map["address 7"] = 67;
    }

    function add(uint256 _amount) public {
        map[amount] = amount + _amount;
        map[amount + _amount] = map[amount] + _amount;
        amount = amount + _amount;
        bytes3 _bytes = 0x1111;
        bytes33 _bytes33 = 0xaa;
        bytes333 _bytes333 = 0xaaab;
        bytes33_ _bytes33_;
        bytes1 _bytes1 = 0x21;
        uint31 _num = 31;
        uint63 _num63 = 34;
        uint64 _str64 = 301000;
        address _address = 0x1020304050607080;
        uint64 _str641 = 4000000000000000000000000;
        uint256 _amount1 = 0x1012201020403050607080910;
        uint32 _byte = 255;
        uint32 _uint256 = 0xffff;
        uint63 _uint63 = 0
