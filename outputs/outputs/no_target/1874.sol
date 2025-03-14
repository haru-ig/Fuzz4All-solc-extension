pragma solidity ^0.8.0;
contract Mutate40 {
    uint public a;
    uint public b;
    uint public x;
    constructor(uint256 x, uint256) public {
        a = x;
        b = (x + 2) / 3;
    }
}
contract Mutate40 {
    uint public a;
    uint public b;
    uint public x;
    constructor(uint256, uint256 x) public {
        a = x;
        b = uint(x + 2 * 3);
    }
}
