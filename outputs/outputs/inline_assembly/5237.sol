pragma solidity ^0.8.0;
contract P1{
    uint32 public iv;
    constructor() public P1(42) {}
    constructor(uint32 _iv) public {
      iv = _iv;
    }
}
contract P2 is P1 {
    P2(uint32 _iv) public P2(_iv+iv) {}
    fallback() external payable {
        iv += msg.value;
    }
}
