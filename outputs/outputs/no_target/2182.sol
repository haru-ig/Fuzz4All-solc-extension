pragma solidity ^0.8.0;
contract Modifications3_SEM9 {
    constructor(uint256 _x, bool _y) public {
        a = _x;
        b = _y;
    }
    function f() public returns (uint256) {
        return bool(a)? uint256(a) + uint256(2) : a;
    }
    uint public a;
    bool public b;
}
