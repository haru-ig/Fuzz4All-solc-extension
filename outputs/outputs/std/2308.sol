pragma solidity ^0.8.0;
contract Mutated {
    uint16 x;
    constructor() {
        x = 10;
    }

    function mutated(uint16 a) public {
        x = SafeMath.max(SafeMath.max(SafeMath.max(a, a), x), x);
    }
}
