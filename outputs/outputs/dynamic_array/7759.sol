pragma solidity ^0.8.0;
contract Test6c {
    uint[610] _a;
    function f() payable public {
        for(uint i=0; i<1000000; i++) {
            _a = a[((uint[])(_a))[0]];
        }
    }
    address[] a;
}
