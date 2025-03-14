pragma solidity ^0.8.0;
contract Test1865W2 is Test1865W {
    uint[1] x;
    function set(uint16[3][] memory x_set) public {
        x[0] = x_set[0][0];
        a = x_set[1][0];
    }
}
