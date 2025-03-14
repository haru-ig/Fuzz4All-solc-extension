pragma solidity ^0.8.0;
contract MutateByteNeg {
    bytes8 s;
    constructor() {
        s = bytes8((uint160(address(this)))-(uint160(address(this))))-1;
    }
}
