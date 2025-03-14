pragma solidity ^0.8.0;
contract C4 {
    function setfoo(bool) public pure {

        setfoo(true);
        uint8[8] memory a;
        uint8 b;
        b = a[5];
    }

    function setfoo(address) public pure {
        uint8 a = 0x1000000000000000000000;
        uint8 b = -a;
    }
}
