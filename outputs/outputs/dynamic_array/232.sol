pragma solidity ^0.8.0;
contract C12 {
    struct T { uint256 s; }
    constructor(uint256 x) {
        T memory tData = T(x);
        (s, x.s) = (tData.s+x.s, tData.s-x.s);
    }
}
