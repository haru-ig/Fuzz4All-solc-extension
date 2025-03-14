pragma solidity ^0.8.0;
contract B {
    bytes4 constant C = 0x11f2d04e;
    uint48[] public b1;
    struct S { uint _x; uint _y; }
    constructor (uint[] memory value) public {
        require(value[0] > 0, "b1[0] > 0");
        b1.push(0);
        S memory value0 = ({ b1: 0 }, 0);
        b1 = value;
        b1.push(0);
        b1[0] = bytes4(C);
        b1[1] = bytes4(C);
    }
}
