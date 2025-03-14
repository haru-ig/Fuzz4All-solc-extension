pragma solidity ^0.8.0;
contract D {
    uint public c;
    assembly {
        c := 0
        v100 := mload(add(calldata, 2))
        v101 := mul(add(v100, 1), 257)
        c := add(c, v101)
        c := add(c, 1)
        mstore(0x60, c)
        mstore(0x50, calldatacopy(0x24, 256))
    }
    function multiply(uint a, uint b) public {
        c = a*b;
    }
}
