pragma solidity ^0.8.0;
contract Q {
    uint32 constant initIV = 8;
    uint32 public iv;
    address admin;
    constructor() public {
      iv = initIV;
    }
    function setAdmin(address _admin) public {
      admin = _admin;
    }
}
