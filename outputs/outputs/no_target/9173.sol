pragma solidity ^0.8.0;
contract semantically_equivalent {
    constructor (uint8 a) public { public_variable = 0; public_variable += a; }
    constructor (uint8 k) public { required_variable = k; }
    uint8 public public_variable;
    uint8 required_variable;
}
