pragma solidity ^0.8.0;
contract Test90003 {
    uint32[] a;
    constructor (uint32 _a) public {
        a = new uint32[](2);
        a[0] = _a;
        a[1] = _a;
    }

}
