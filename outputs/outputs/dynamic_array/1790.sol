pragma solidity ^0.8.0;
contract InvalidArraySize {
    uint[] public nonFixedValue1;
    constructor() {
        nonFixedValue1.push();
        nonFixedValue1.push();
        nonFixedValue1.push();
        nonFixedValue1.push();
    }
}
