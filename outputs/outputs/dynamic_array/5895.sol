pragma solidity ^0.8.0;
contract Test1865W2 {
    uint16[3][] x = [0x2, 0x4, 0x6];
    function set() public {
        x[0][0] = x[1][0];
    }
}
