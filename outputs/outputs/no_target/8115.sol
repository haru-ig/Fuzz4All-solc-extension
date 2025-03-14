pragma solidity ^0.8.0;
contract Mutated2 {
    uint x = 1;
    uint x_ = 2;
}

pragma solidity ^0.8.0;
contract Mutated3 {
    uint x;
    uint x_ =!x;
    constructor() {
        bytes memory empty = "";
        x;
        x_;
    }
}
