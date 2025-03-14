pragma solidity ^0.8.0;
contract C {
    uint256[5] a;
    constructor () {
        create(uint256[24] storage a);
        a.push(42);
    }
    function create(uint256 storage a) {
        a[0] = 0;
        a[4] = 24;
    }
}
contract D {
    uint[] a;
    constructor () {
        a.push(42);
    }
}
