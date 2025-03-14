pragma solidity ^0.8.0;
contract MutatedDynamicStruct {
    mutated struct A {
        bytes8 data;
    }
    constructor (bytes8 initial) {
        A memory a;
        a.data = initial;
    }
}
