pragma solidity ^0.8.0;
contract Test66 {
    function foo(uint128[] memory x) public {
        uint[64] memory a;
        a[255]=1;
        a[254]=2;
        uint128[255] memory b;
        uint8[] memory c;
        c[1]=0xff;
        b[1]=0xffffff;
    }
}
