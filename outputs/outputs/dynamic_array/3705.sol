pragma solidity ^0.8.0;
contract E {
    uint16[] a;
    constructor(uint256 x) {
        for(uint256 i = 0; i < x; i++) {
            a.push(i+1);
        }
    }
    function f() public {
        a[100]++;
    }
}
