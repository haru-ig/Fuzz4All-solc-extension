pragma solidity ^0.8.0;
contract Arrays9{
    uint16[] public s;
    constructor() public{
        s.push(2);
        s[1] = 5;
        s[3] = s[2];
        s[0] = 3;
    }
}
