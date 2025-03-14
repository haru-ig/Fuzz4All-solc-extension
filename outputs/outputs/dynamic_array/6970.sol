pragma solidity ^0.8.0;
contract Test7 {
    bytes32[][] memory a;
    constructor() {
        a[1] = a[1];
    }
    function s() public pure returns (uint) {
        return 0;
    }
}
