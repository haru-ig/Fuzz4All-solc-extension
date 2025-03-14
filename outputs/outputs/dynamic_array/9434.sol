pragma solidity ^0.8.0;
contract Arrays10{
    uint16[] public s;
    constructor() public{
        for (uint i=0; i < s.length - 1; i++) s[i] = 3;
    }
}
