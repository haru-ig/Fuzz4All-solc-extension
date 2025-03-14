pragma solidity ^0.8.0;
contract EquivalentGoodCase13 {
    constructor() {
        m = 3;
        m2 = -3;
    }
    modifier m1() {
        m2 = m;

        _;
        m2 = m;
    }
}
contract EquivalentGoodCase14 {
    uint8 constant m = 3;
    uint constant m2 = 3;
}
