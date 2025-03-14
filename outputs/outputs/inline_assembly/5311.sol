pragma solidity ^0.8.0;
uint64 constant initIB = 21;
contract Q2 {
    uint64 IB;



    constructor(uint64 initIB_) public {
        IB = initIB_;
    }

    function update() public {
        IB = initIB_;
    }
}
