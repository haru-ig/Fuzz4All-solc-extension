pragma solidity ^0.8.0;
contract C {
    uint32[0][0] b1;
    constructor (uint32[0][0] memory value) public {
        b1.push(0);
        b1.push(0);
        b1 = value;
    }
}
pragma solidity ^0.8.0;
