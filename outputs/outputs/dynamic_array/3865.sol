pragma solidity ^0.8.0;
contract C {
    uint[][] memory b1;
    constructor (uint[][] memory value) public {
        b1.push(uint[][](new uint[][][](2)));
        b1.push(uint[][](new uint[][][](2)));
        b1[0] = value;
    }
}
