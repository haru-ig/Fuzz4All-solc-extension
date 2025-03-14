pragma solidity ^0.8.0;
contract Modifications3_C {
    modifier constantMod(uint256 _mod) {
        require(_mod == 2);
        _;
    }
    constructor(uint256 _x, uint256 _y) public {
        a = _x;
    }
    function f() public constantMod(uint256 y) returns (uint256) {
        return uint256(a > 0? uint256(a) + uint256(y) : a);
    }
    uint public a;
}
