pragma solidity ^0.8.0;
contract Test7 {
    bytes[] a;
    constructor() {
        a[3] = new bytes(0);
        a[3] = new bytes(0);
        a[5] = new bytes(-9+9999999);
        a[8] = new bytes(0);
        bytes[] memory i = a;
    }
    function s() public pure returns (uint) {
        return 0;
    }
}
