pragma solidity ^0.8.0;
contract C {
    uint internal a;
    mapping(uint => uint) public b;
    constructor() { a = a + 1; b[a] = 2; }
    function c() public {
        a = a + 1;
        b[a] = 2;
    }
}
