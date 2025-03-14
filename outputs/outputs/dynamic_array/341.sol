pragma solidity ^0.8.0;

struct S{
    uint a;
    uint b;
}
contract R{
    uint[] public arr;
    mapping (uint => S) public map;
    S private s;
    constructor() public{
        s.a = 1;
        s.b = 21;
        arr.push(0);
        arr.push(1);
        map[0] = s;
    }
}
