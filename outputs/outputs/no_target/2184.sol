pragma solidity ^0.8.0;
contract Modifications3_SEM9 {
    constructor(int16 _x) public {
        a = _x;
    }
    function f() public returns (int16) {
        return int16(uint256(a) > 0? uint256(-a) + 2 : a);
    }
    int16 public a;
}
