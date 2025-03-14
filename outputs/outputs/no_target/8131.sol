pragma solidity ^0.8.0;
contract Mutated3 {
    bool x;
    bool x_;
    constructor() {
        bool y = false;
        bool z = false;
        bool q =!y ^!z;
        bool r = y ^ z;
    }
}
