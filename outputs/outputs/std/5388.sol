pragma solidity ^0.8.0;
contract Mutate7 {
    uint256 public x;
    constructor() { x = initialBalance; }
    function f() public {
        x *= 4;
    }
    function g() public {
        x /= 4;
    }
    function _set(uint a) public { initialBalance = a; }
    function m() public view returns (uint256) { return x; }
}
