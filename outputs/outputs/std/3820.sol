pragma solidity ^0.8.0;
contract Memo
{
    uint a;
    uint256 internal b;
    constructor(uint256 _a) {
        a = _a;
        b = add(a, multiply(a, 10));
    }
    function sum() public view returns (uint256) {
        return add(a, b);
    }
}
