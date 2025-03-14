pragma solidity ^0.8.0;
uint32 constant initIB = 42;
contract Q {
    uint32 IB;
    uint32 IB2;
    constructor() public {
        IB2 = IB - initIB + 45;
    }
    function update() public {
        IB -= IB2;
    }
}

pragma solidity ^0.8.0;
uint32 constant initIB = 42;
contract Q {
    uint32 IB;
    uint32 IB2;
    uint32 IB3;
    constructor() public {
        IB2 = IB - initIB;
        IB3 = IB - IB2;
    }
    function update() public {
        IB -= IB3;
    }
}
