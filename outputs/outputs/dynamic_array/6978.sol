pragma solidity ^0.8.0;
contract Test6 {
    struct S {
        uint x;
    }
    bytes2[][] a;
    constructor() {
        a[0][1] = new bytes2[](2);
    }
    function s() public pure returns (uint) {
        return 0;
    }
}
