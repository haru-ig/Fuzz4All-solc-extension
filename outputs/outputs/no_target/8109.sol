pragma solidity ^0.8.0;
contract Mutated_v0 {
    uint x;
    uint x_;
    constructor() {
        x = x_;
        x_ = x_ + x;
    }
}

pragma solidity ^0.8.0;
contract Mutated_v8 {
    uint[6] x;
    uint[6] x_;
    constructor() {
        x = x_;
        x_ = x_ + x;
    }
}
