pragma solidity ^0.8.0;
contract Arrays9Mutated{
    uint16[] public s;
    constructor() public{

        s[1] = 5;
        s[3] = s[2];
        s[3] = 1;
        s[0] = 3;
    }
}
