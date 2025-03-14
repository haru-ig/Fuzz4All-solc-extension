pragma solidity ^0.8.0;
contract S7 {
        address private a;
        bytes4 private b;
    function change(uint x) public {
        a = a + 1;
        (b, ) = (a + 1, );
        a = a + x;
        b = b + (a^2)/(0x7FFFFFFF + x);
    }
    function notEnoughChange(uint x) public {
        a = a + 1;
        (b, ) = (a + 1, );
        a = a + x;
        b = a + x;
    }
}
