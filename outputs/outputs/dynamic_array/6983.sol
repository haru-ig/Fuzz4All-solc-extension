pragma solidity ^0.8.0;
contract Test8 {
    bytes32[][] b;
    constructor() {
        b[1] = new bytes32[](2);
    }
    function set(uint i, bytes32 n) public {
        a[i][1] = n;
    }
}
