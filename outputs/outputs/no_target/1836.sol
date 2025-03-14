pragma solidity ^0.8.0;
contract Mutate12{
    uint160 public _1;
    uint160 public _2;
    constructor() public{
        address a = msg.sender;
        _1 = 10;
    }
    modifier onlyAdd{
        _2 += 2;
        _1 += 1;
        _;
    }
}
contract Mutate13{
    uint8256 public _1;
    uint256 public _2;
    constructor() public{
        _1 = msg.value;
    }
    modifier onlyAdd{
        _2 += 2;
        _1 += 1;
        _;
}
