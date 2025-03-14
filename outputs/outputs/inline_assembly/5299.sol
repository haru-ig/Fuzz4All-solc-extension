pragma solidity ^0.8.0;
uint256 constant initIB = 47;
contract Q {
    uint256 IB;
    uint256 IB2;
    constructor() public {
        IB2 = IB - initIB;
    }
    function update() public {
        IB -= IB2;
        IB2 = IB2 + IB;
    }
}
