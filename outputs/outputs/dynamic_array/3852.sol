pragma solidity ^0.8.0;
contract C {
    uint[] storage s1;
    constructor (uint[] calldata value) public {
        s1.push(0);
        s1.push(0);
        s1 = value;
    }
}
