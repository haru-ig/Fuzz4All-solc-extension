pragma solidity ^0.8.0;
contract A {
    uint256 x;
    uint256 y;
    constructor () public {
        x = 0;
        y = 0;
    }
    modifier z1() {x++;};
    modifier z2() {y++;};
    function s() public pure {
        A a = A(0x0);
        (a.z1(),, a.z2());
        x;
        y;
    }
}
