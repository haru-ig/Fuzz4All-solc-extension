pragma solidity ^0.8.0;
contract Example{
    uint256 constant public value = 0;
    assembly {

        mov(t0, 0)

        mstore(t0, 0x3b363c39363c363c39363c39313b313b39363c3937333b363c3939)

        extcodesize(t0, t1)
        delegatecall(t0, t10, t17)
    }
}
