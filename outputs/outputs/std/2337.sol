pragma solidity ^0.8.0;
contract Equivalent
{
    uint x = 15;
    constructor() {
    assembly {
      x := 42
    }
    }
}
