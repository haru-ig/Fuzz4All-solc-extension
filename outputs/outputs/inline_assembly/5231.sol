pragma solidity ^0.8.0;
contract P2 {
    uint32 iv;
    constructor(uint128 _iv) public {
      iv = uint32(_iv);
    }
}
