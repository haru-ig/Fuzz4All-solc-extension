pragma solidity ^0.8.0;
contract Test7 {
    bytes32[][] a;
    constructor() {
        a[1] = new bytes32[](1);
        bytes32[] memory i1 = a[1];
        bytes32[] memory i2 = i1;
        bytes32[] memory i3;
        i3 = i2;
        i2 = i3;
    }



    function s() public pure returns (uint) {
        return 0;
    }
}
