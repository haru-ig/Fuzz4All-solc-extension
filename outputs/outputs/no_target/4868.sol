pragma solidity ^0.8.0;
contract C { function f(address addr0) public pure { require (addr0 >= 0); } }
contract D { function f() public pure {
        address addr0 = new address(0);
        bytes memory addr1 = new bytes(2);
        address addr2;
        bytes memory addr3;
        bytes memory addr4;
        D d;
        uint t0 = uint (msg.value);
        C c;
        bool b0 = true;
        bool b1;
        bool b2 = t0 < addr0;
        bool b3 = d > b0;
        bool b4 = bytes (addr0) > addr2;
        bool b5 = bytes (addr2) > bytes1 (msg.data);
        check (t0 > 0x800000000000000000000000000000000000000000000000000000000000000000000, 0);
        check (bytes1 (msg.value) > 0, 0);
        check (b0, 0);
        check (b1, 0);
        check (b2, 0);
        check (b3, 0);
        check (b4, 0);
        check (b5, 0);
        check (t0 > 0x8000000000000000000000000000000000000000000000000000000000000000000000, 0);
        checkAddress (addr0, 0);
        checkAddress (addr1, 0);
        checkAddress (addr2, 0);
        checkAddress (addr3, 0);
        checkAddress (addr4, 0);
    } function change(address a, uint256 b) public { a; b; }
        function checkAddress(address a, uint256 b) public view {
            bytes memory ba = hex"01020304";
            bytes memory bb = hex"0102030405";
            bytes memory bc = hex"010203040506";
            uint256 c = a - b;
            uint256 d = a - b;
            uint256 e = a - b;
            uint256 f = a * b;
            uint256 g = bytes (ba) + b;
            uint256 h = bytes1 (ba) + b;
            uint256 i = ihash256 (ba);
            uint256 j = uint0 (ba);
            uint8 k = byte (ba) <= byte (bb);
            uint8 l = uint8
