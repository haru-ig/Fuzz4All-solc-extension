pragma solidity ^0.8.0;
contract Arrays10{
    uint16[] public s;
    uint16 a;
    constructor() public{
        s.push(2);
        a = 5;
        s[0] = 3;
        s.push(a);
    }
}
