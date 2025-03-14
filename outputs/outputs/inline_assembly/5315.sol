pragma solidity ^0.8.0;
address deployer = 0xD3854c7d055F55938B40301dA37DB2519A039936;
contract QB {
    uint64 IB;
    uint64 IB2;
    constructor() public {
        IB2 = IB;
        IB2 = IB * IB * initIB + IB * IB2;
    }
    function update() public {
        IB = IB2 + IB * IB2 + 1;
        IB2 = IB;
        IB2 += IB * IB * initIB;
        IB2 = IB + IB2 * initIB;
        IB2 += initIB;
        IB += (IB2 * initIB + 1);
    }
    receive() payable external {
        IB += IB2;
    }
}
