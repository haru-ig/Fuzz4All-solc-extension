pragma solidity ^0.8.0;
contract D {
    uint256[100][100]  a;
    constructor() {}
    function f() public {
        a[123][124];
    }
}
