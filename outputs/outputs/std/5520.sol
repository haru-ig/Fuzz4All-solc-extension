pragma solidity ^0.8.0;
contract Mutate23 {
    address[10] z;
    constructor() {
        z[0] = address((uint128(0)));
        z[1] = address((uint256(0)));
        for(uint128 i=0;i<2;i++) z[i+2] = address((uint128(0)));
    }
}
