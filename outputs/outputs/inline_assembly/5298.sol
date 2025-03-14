pragma solidity ^0.8.0;
contract Q {
    uint256 IB;
    uint256 IB2;
    constructor() public {
        IB2 = IB - 1;
    }
    function update() public {
        IB = IB2;
    }
}
