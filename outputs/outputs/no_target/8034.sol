pragma solidity ^0.8.0;
contract Escaping {
    string s;
    constructor () public {
        string memory str1 = "255";
        string memory str2 = "-32";
        string memory str3 = "1/184";
        uint d1;
        uint d2;
        uint d3;
        uint4 test4 = 1680;
        uint mum4;
        uint test32 = 71452943024421552624;
        uint4 test42;
        string test43;
        bytes memory data4;
        string memory data5;
        bytes data6;
        uint test64;
        uint mum64;
    }
    function f() public view {
        string memory str4 = "\x01\x02\x03";

        uint d4;
        uint test44 = 5;

        string memory data = "\x01\x02\x03\x04\x05\x06";
        bytes memory data2 = "\x01";
        bytes memory data3 = bytes1[4]("\x01");
        data3 = bytes1[4](data);
        data = bytes("\xfe\x15\xfd\xa5\x0c\xfe\x0a");
        d4 = (uint160(-1));
        d4 = (uint(uint64(-1)));
        d4 = (uint(uint64(uint160(-1))));
        d4 += (uint(uint64(uint80(-1))));
        d4 = (1e1);
        d4 = (200e0);
        test44 = (200e2);
        str4 = "\x0123456789";
        d4 = (200);
        d4 = (+80);
        uint test41 = -1;
        test44 = test41;
        data3 = bytes4[3]("\x01\x02\x03");
        d4 = (uint32(-325427478));
        test44 = d4 + (uint(uint64(-42)));
        d4 = (uint64(uint32(-32));
        test44 = (uint4(uint32(uint256(uint168(uint32(uint32(uint1024(uint32(uint1024(uint32(uint1024(uint32(
