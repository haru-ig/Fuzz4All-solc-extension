pragma solidity ^0.8.0;
contract Arrays {
    uint[5] public a;
    uint[5] public b;

    function fillMemTest() public {
        a.length = 4;
        a[0] = 12;
        a[3] = 13;
    }

    function fillArrayTest() public {
        c.length = 4;
        c[0] = 5;
        c[3] = 7;
    }
}
