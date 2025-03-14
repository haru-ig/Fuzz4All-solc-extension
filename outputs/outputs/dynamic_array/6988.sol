pragma solidity ^0.8.0;
contract Test7 {
    bytes32[][][] a;
    constructor() {
        a[0] = new bytes32[][][](1);
        a[1][1] = 3;
    }
    function s() public pure returns (uint) {
        return 0;
    }
}
