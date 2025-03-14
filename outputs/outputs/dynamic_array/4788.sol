pragma solidity ^0.8.0;
contract Test2Mut {
    uint8[] a;
    function MutateData1() public {
        a[4] = 2;
        a[0] = 10;
    }
}
