pragma solidity ^0.8.0;
contract Mutate7 {
    uint public _1;
    uint public _2;
    constructor() public {
        _1 = 0;
        unchecked {_2 = 4;}
    }
    modifier onlyAdd {
        _1 += 1;
        unchecked {_1 += 10;}
        _2 -= 3;
        unchecked {_2 += 18;}
        _;
    }
}
