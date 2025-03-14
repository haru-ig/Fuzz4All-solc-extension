pragma solidity ^0.8.0;
contract A is B {
    constructor() public {
      _z = -z_;
    }
    uint private z_;
    function () public returns (uint) {
        return z_;
    }
}
