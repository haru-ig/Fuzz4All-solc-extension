pragma solidity ^0.8.0;
contract Test14 {
    uint public A;
    uint public B;
    uint public C;
    mapping(uint=>uint) public BMap;
    constructor() public {
        address ARef1=address(this);
        C = BMap[ARef1];
    }
}
