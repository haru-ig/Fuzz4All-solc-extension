pragma solidity ^0.8.0;
contract Mutate7 {
    uint public _1;
    uint public _2;

    constructor() public {
        _1 = 1e18;
        _2 = 3e18;
    }
    modifier onlyAdd {
        _1 += 1;
        _2 -= 7;
        _;
    }
}
