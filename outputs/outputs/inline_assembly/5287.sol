pragma solidity ^0.8.0;
uint32 constant initIB = 46;
contract Test {
    uint32 IB;
    uint32 IB2;
    constructor() public {
        IB2 = IB - initIB;
    }
    function update() public {
        IB -= IB2;
    }
}
contract Q {
    uint32 IB = 42;
    uint32 IB2;
    constructor() public {
        IB = IB2;
    }
    function update() public {
        IB -= IB2;
    }
}
