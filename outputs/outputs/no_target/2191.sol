pragma solidity ^0.8.0;
contract Modifications2_SEM10 {
    uint public a;
    uint public b;
    constructor(uint256 _x, uint256 _y) public {
        c = _y;
    }
    function f() public returns (uint) {
        return uint(_x < 0xffff);
    }
    uint public c;
}
