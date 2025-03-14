pragma solidity ^0.8.0;
contract MutantMutantContract2 {
    uint storedLastValue;
    constructor() {
        byte c;
        assembly {
            lastValue := 0x{c}
       }
    }
    fallback function() {lastValue += 1;}
}
