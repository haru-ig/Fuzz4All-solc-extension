pragma solidity ^0.8.0;
contract Mutated2 {
    uint value_;
    uint value = value_;
    uint y = value;
    uint y_ = value - value_;
}

contract Mutated3 {
    uint value_;
    constructor(uint a) public {
        value_ = a / a;
    }
}


contract Valid {
    constructor(uint a) public {
        a / a;
    }
}
