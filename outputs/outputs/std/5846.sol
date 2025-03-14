pragma solidity ^0.8.0;
contract Mutated11 {
    function mutated11(uint[3] memory a) public pure returns (uint) {
        uint[3] memory b = arrayFromUint(a);
        (a[0], b.length) = (uint(2), uint(1));
        uint c;
        (c, b) = (uint(3), b);
        uint d;
        c = uint(2);
        (c, d) = (c, b);
        uint e;
        (a[0], ) = (uint(4), a);
        return e;
    }

    function arrayFromUint(uint[3] memory b) public pure returns (uint[2] memory v) {
        return v = (b[1], b[0]);
    }
}
