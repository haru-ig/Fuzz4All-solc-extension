pragma solidity ^0.8.0;
pragma solidity >=0.8;
contract fourth {
    function g() public pure returns (address) {
        bool b = false;
        address a;
        if (b) a = address(0x1);
        else a = address(0x2);
    }
    function h() public pure returns (address) {
        bool b;
        if (b) a = address(0x1);
        else a = address(0x2);
    }
    function i() public pure returns (address) {
        int i = 0x1;
        byte[] b;
        address a;
        if (b == uint8(i)) a = address(0x3);
        else if (i == uint8(i)) a = address(0x4);
        else a = address(0x5);
    }
    function j() public pure returns (address) {
        uint u = 0x1;
        byte[] b;
        address a;
        if (b!= uint8(u)) a = address(0x6);
        else if (u!= uint8(u)) a = address(0x7);
        else a = address(0x8);
    }
    function k() public pure returns (address) {
        uint u = 0x1;
        byte b;
        address a;
        if (u!= uint8(b)) a = address(0x9);
        else a = address(0x0);
    }
    function l() public pure returns (address) {
        uint i = 0x1;
        uint8 b;
        address a;
        if (b == uint8(i)) a = address(0x3);
        else a = address(0x4);
    }
}
