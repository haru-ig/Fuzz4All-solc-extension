pragma solidity ^0.8.0;
contract Test7 {
    bytes32[][][] a;
    constructor() {
        a[1] = new bytes32[](2);
        a[1][0] = new bytes32[](0);
    }
    function t() public pure returns (uint) {
        return 0;
    }
}
