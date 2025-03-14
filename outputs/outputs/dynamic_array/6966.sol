pragma solidity ^0.8.0;
contract Test7 {
    bytes32[][] a;
    bytes32[] memory i1;
    constructor() {
        a[1] = new bytes32[](1);
        i1 = a[1];
        i1[0] = 1;
    }
    function s() public pure returns (uint) {
        return i1[0];
    }
}
