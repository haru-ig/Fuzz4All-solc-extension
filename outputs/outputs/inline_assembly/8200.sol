pragma solidity ^0.8.0;
contract Mutated2 {
    mapping(uint256 => uint256) public a;
    uint256 public b;
    constructor () {
        b = 10;
    }
    function increase() public {
        a[b]++;
        b=b;
    }
}
