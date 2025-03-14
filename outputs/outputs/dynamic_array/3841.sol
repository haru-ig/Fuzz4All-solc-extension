pragma solidity ^0.8.0;
contract C {
    uint[] b1;
    constructor (uint[] memory value) public {
        b1.push(0);
        b1.push(0);
        b1 = value;
    }
}
