pragma solidity ^0.8.0;
contract Q {
    uint8 IB;
    uint8 IB2;
    constructor() public {
        IB2 = IB * 2 + IB8;
    }
    function update() public {
        IB %= IB2;
        IB2 = IB2;
    }
}
